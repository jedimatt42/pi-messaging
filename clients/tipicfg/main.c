
#include <files.h>

#include <string.h>
#include <system.h>
#include <conio.h>

#define VPAB 0x3000
#define FBUF 0x3200

#define GPLWS ((unsigned int*)0x83E0)
#define DSRTS ((unsigned char*)0x401A)

#define TIPICFG_VER "7"
#define PI_CONFIG "PI.CONFIG"
#define PI_STATUS "PI.STATUS"
#define PI_UPGRADE "PI.UPGRADE"
#define PI_SHUTDOWN "PI.SHUTDOWN"
#define PI_REBOOT "PI.REBOOT"

#define FCTN_U ((char)95)

void waitjiffies(int jiffies);

unsigned char dsr_openDV(struct PAB* pab, char* fname, int vdpbuffer, unsigned char flags);
unsigned char dsr_close(struct PAB* pab);
unsigned char dsr_read(struct PAB* pab, int recordNumber);
unsigned char dsr_write(struct PAB* pab, unsigned char* record);

int strcmp(const char* a, const char* b);
int indexof(const char* str, char c);

void reload();

void processStatusLine(char* cbuf);
void loadPiStatus();

void processConfigLine(char* cbuf);
void loadPiConfig();

void savePiConfig();

void upgrade();
void shutdown();
void reboot();
void toggleAutomap();
void spinnerMessage(int seconds, const char* msg);
void spinnerPoll(const char* msg);
void statusMessage(const char* msg);

void getstr(int x, int y, char* var);

const char spinner[4] = { '-', 92, '|', '/' };

char ipaddress[79]; // generically k=v values from files would be at most 78 characters. 
char version[79];
char latest[79];
int crubase;

char dsk1_dir[79];
char dsk2_dir[79];
char dsk3_dir[79];
char wifi_ssid[79];
char wifi_psk[79];
char uri1[79];
char uri2[79];
char uri3[79];
char automap[79];

int wifi_dirty;
int disks_dirty;
int has_upgrade;

inline void enableTipi() {
  __asm__("mov %0,r12\n\tsbo 0" : : "r"(crubase) : "r12");
}

inline void disableTipi() {
  __asm__("mov %0,r12\n\tsbz 0" : : "r"(crubase) : "r12");
}

unsigned char getRC() {
  enableTipi();
  waitjiffies(8);
  unsigned char rc = *((volatile unsigned char*)0x5FF9);
  disableTipi();
  return rc;
}

void waitjiffies(int jiffies) {
  for(int i=0; i < jiffies; i++) {
    VDP_WAIT_VBLANK_CRU;
  }
}

void showCrubase(int crubase) {
  gotoxy(0,1);
  cprintf("CRUBASE: %x", crubase);
}

void showValue(int x, int y, const char* val) {
  gotoxy(x,y);
  cclear(40 - x);
  gotoxy(x,y);
  cputs(val);
}

void showMode() {
  int statusbits = 0;
  if (crubase != 0) {
    __asm__("mov %1,r12\n\ttb 3\n\tstst %0" : "=r"(statusbits) : "r"(crubase) : "r12"); 
  }
  if (statusbits & 0x2000) {
    gotoxy(13,19);
    cputs("        ");
    gotoxy(13,20);
    cputs("- active");
  } else {
    gotoxy(13,19);
    cputs("- active");
    gotoxy(13,20);
    cputs("        ");
  }
}

void showQMenu() {
  gotoxy(0,22);
  cputs("CFG: Q)uit, ");
  cputs("R)eload");  
  if (disks_dirty || wifi_dirty) {
    gotoxy(19,22);
    cputs(", W)rite");
  } else {
    cclearxy(19,22,8);
  }
  gotoxy(0,23);
  cputs(" PI: H)alt, ");  
  cputs("re(B)oot");  
}

void printDsrTimestamp() {
  gotoxy(11,2);
  if (crubase != 0) {
    // enable the ROM
    __asm__("mov %0,r12\n\tsbo 0" : : "r"(crubase) : "r12");
    // copy from the ROM to screen
    if (*(DSRTS) == '2') { // good for almost 100 years
      cputs(DSRTS);
    }
    // disable the ROM
    __asm__("mov %0,r12\n\tsbz 0" : : "r"(crubase) : "r12");
  }
}

void tiMode() {
  if (crubase != 0) {
    __asm__("mov %0,r12\n\tsbz 3" : : "r"(crubase) : "r12");
  }
}

void myarcMode() {
  if (crubase != 0) {
    __asm__("mov %0,r12\n\tsbo 3" : : "r"(crubase) : "r12");
  }
}

void initGlobals() {
  strcpy(ipaddress,"");
  strcpy(version,"");
  strcpy(dsk1_dir,"");
  strcpy(dsk2_dir,"");
  strcpy(dsk3_dir,"");
  strcpy(wifi_ssid,"");
  strcpy(wifi_psk,"");
  strcpy(uri1,"");
  strcpy(uri2,"");
  strcpy(uri3,"");
  strcpy(automap,"");
  crubase = 0;

  wifi_dirty = 0;
  disks_dirty = 0;
  has_upgrade = 0;
}

void setupScreen() {
  set_text();
  charset();
  bgcolor(COLOR_CYAN);
  textcolor(COLOR_BLACK);
}

void layoutScreen() {
  clrscr();
  gotoxy(0,0);
  cputs("TIPICFG v");
  cputs(TIPICFG_VER);
  showCrubase(crubase);
  gotoxy(0,2);
  cputs("DSR Build: ");
  printDsrTimestamp();

  gotoxy(13,0);
  cputs("PI-Version: ");
  gotoxy(21,1);
  cputs("IP: ");
  gotoxy(0,3);
  chline(40);
  gotoxy(0,5);
  chline(40);

  gotoxy(0,6);
  cputs("Drive Mappings");
  gotoxy(24,6);
  cputs("A) AUTO=");
  gotoxy(2,7);
  cputs("1) DSK1=");
  gotoxy(2,8);
  cputs("2) DSK2=");
  gotoxy(2,9);
  cputs("3) DSK3=");
  gotoxy(2,10);
  cputs("J) URI1=");
  gotoxy(2,11);
  cputs("K) URI2=");
  gotoxy(2,12);
  cputs("L) URI3=");

  gotoxy(0,13);
  chline(40);
  gotoxy(0,14);
  cputs("WiFi Settings");
  gotoxy(2,15);
  cputs("S) SSID=");
  gotoxy(2,16);
  cputs("P)  PSK=");
  gotoxy(0,17);
  chline(40);

  gotoxy(0,18);
  cputs("Emulation Mode");
  gotoxy(2,19);
  cputs("T)I DSK");
  gotoxy(2,20);
  cputs("M)yarc WSD");

  gotoxy(0,21);
  chline(40);
  showMode();
  showQMenu();
}

void main()
{
  initGlobals();
  setupScreen();

  layoutScreen();

  reload();

  unsigned char key = 0;
  do {
    gotoxy(23,35);
    
    while(!kbhit()) {}

    key = cgetc();
    switch(key) {
      case 'A':
      case 'a':
        disks_dirty = 1;
        toggleAutomap();
        showValue(32,6,automap);
        break;
      case '1':
        disks_dirty = 1;
        getstr(10,7,dsk1_dir);
        showValue(10,7,dsk1_dir);
        break;
      case '2':
        disks_dirty = 1;
        getstr(10,8,dsk2_dir);
        showValue(10,8,dsk2_dir);
        break;
      case '3':
        disks_dirty = 1;
        getstr(10,9,dsk3_dir);
        showValue(10,9,dsk3_dir);
        break;
      case 'J':
      case 'j':
        disks_dirty = 1;
        getstr(10,10,uri1);
        showValue(10,10,uri1);
        break;
      case 'K':
      case 'k':
        disks_dirty = 1;
        getstr(10,11,uri2);
        showValue(10,11,uri2);
        break;
      case 'L':
      case 'l':
        disks_dirty = 1;
        getstr(10,12,uri3);
        showValue(10,12,uri3);
        break;
      case 'S':
      case 's':
        wifi_dirty = 1;
        getstr(10,15,wifi_ssid);
        showValue(10,15,wifi_ssid);
        break;
      case 'P':
      case 'p':
        wifi_dirty = 1;
        getstr(10,16,wifi_psk);
        showValue(10,16,wifi_psk);
        break;
      case 'R':
      case 'r':
        reload();
        break;
      case 'W':
      case 'w':
        savePiConfig();
        disks_dirty = 0;
        wifi_dirty = 0;
        break;
      case 'U':
      case 'u':
        if (has_upgrade == 1) {
          upgrade();
        }
        break;
      case FCTN_U:
        upgrade();
        break;
      case 'H':
      case 'h':
        shutdown();
        break;
      case 'B':
      case 'b':
        reboot();
        break;
      case 'T':
      case 't':
        tiMode();
        break;
      case 'M':
      case 'm':
        myarcMode();
        break;
    }

    showMode();
    showQMenu();

    VDP_INT_POLL;

  } while(key != 'Q' && key != 'q');

  gotoxy(0,4);
  cputs("quiting...");
  __asm__("clr r0\n\tblwp *r0");
}

void loadPiStatus() {
  struct PAB pab;

  unsigned char ferr = dsr_openDV(&pab, PI_STATUS, FBUF, DSR_TYPE_INPUT);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    return;
  }

  // see if we can steal the crubase
  // should work immediately after a dsrlnk if interrupts are off.
  crubase = GPLWS[12];
  showCrubase(crubase);
  printDsrTimestamp();

  int recNo = 0;
  ferr = DSR_ERR_NONE;
  while(ferr == DSR_ERR_NONE) {
    unsigned char cbuf[81];
    ferr = dsr_read(&pab, 0);
    gotoxy(0,22);
    if (ferr == DSR_ERR_NONE) {
      // Now FBUF has the data... 
      vdpmemread(FBUF, cbuf, pab.CharCount);
      cbuf[pab.CharCount] = 0;
      processStatusLine(cbuf);
    }
  }
  ferr = dsr_close(&pab);

  showValue(25, 0, version);
  showValue(25, 1, ipaddress);
  if (strcmp(latest, version) > 0) {
    gotoxy(0, 4);
    cputs("U) upgrade to ");
    cputs(latest);
    has_upgrade = 1;
  } else {
    cclearxy(0,4,40);
    has_upgrade = 0;
  }

  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }
}

void processStatusLine(char* cbuf) {
  int i = indexof(cbuf, '=');
  if (i == -1) {
    return;
  }
  cbuf[i] = 0;
  char* val = cbuf + i + 1;
  if (0 == strcmp(cbuf, "VERSION")) {
    strcpy(version, val);
  } else if (0 == strcmp(cbuf, "IP_WLAN0")) {
    strcpy(ipaddress, val);
  } else if (0 == strcmp(cbuf, "IP_ETH0")) {
    strcpy(ipaddress, val);
  } else if (0 == strcmp(cbuf, "LATEST")) {
    strcpy(latest, val);
  }
}

void loadPiConfig() {
  struct PAB pab;
  
  unsigned char ferr = dsr_openDV(&pab, PI_CONFIG, FBUF, DSR_TYPE_INPUT);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    return;
  }

  int recNo = 0;
  ferr = DSR_ERR_NONE;
  while(ferr == DSR_ERR_NONE) {
    unsigned char cbuf[81];
    ferr = dsr_read(&pab, 0);
    gotoxy(0,22);
    if (ferr == DSR_ERR_NONE) {
      // Now FBUF has the data... 
      vdpmemread(FBUF, cbuf, pab.CharCount);
      cbuf[pab.CharCount] = 0;
      processConfigLine(cbuf);
    }
  }

  showValue(10, 7, dsk1_dir);
  showValue(10, 8, dsk2_dir);
  showValue(10, 9, dsk3_dir);
  showValue(10, 10, uri1);
  showValue(10, 11, uri2);
  showValue(10, 12, uri3);
  showValue(10, 15, wifi_ssid);
  showValue(10, 16, wifi_psk);
  showValue(32,6, automap);

  ferr = dsr_close(&pab);
  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }
  gotoxy(0,4);
  cclear(40);
}

void reload() {
  disks_dirty = 0;
  wifi_dirty = 0;
  loadPiConfig();
  loadPiStatus();
}

void processConfigLine(char* cbuf) {
  int i = indexof(cbuf, '=');
  if (i == -1) {
    return;
  }
  cbuf[i] = 0;
  char* val = cbuf + i + 1;
  if (0 == strcmp(cbuf, "DSK1_DIR")) {
    strcpy(dsk1_dir, val);
  } else if (0 == strcmp(cbuf, "DSK2_DIR")) {
    strcpy(dsk2_dir, val);
  } else if (0 == strcmp(cbuf, "DSK3_DIR")) {
    strcpy(dsk3_dir, val);
  } else if (0 == strcmp(cbuf, "URI1")) {
    strcpy(uri1, val);
  } else if (0 == strcmp(cbuf, "URI2")) {
    strcpy(uri2, val);
  } else if (0 == strcmp(cbuf, "URI3")) {
    strcpy(uri3, val);
  } else if (0 == strcmp(cbuf, "WIFI_SSID")) {
    strcpy(wifi_ssid, val);
  } else if (0 == strcmp(cbuf, "WIFI_PSK")) {
    strcpy(wifi_psk, val);
  } else if (0 == strcmp(cbuf, "AUTO")) {
    strcpy(automap, val);
  }
}

void getstr(int x, int y, char* var) {
  // need to add maxlen... so we know how big var is.
  gotoxy(x,y);
  cclear(40-x);
  gotoxy(x,y);
  cputs(var);

  unsigned char key = 0;
  int idx = strlen(var);
  while(key != 13) {
    // should set cursor to current char
    conio_cursorChar = var[idx];
    if (conio_cursorChar == 32 || conio_cursorChar == 0) {
      conio_cursorChar = 30;
    }
    gotoxy(x+idx,y);
    key = cgetc();
    int delidx = 0;
    switch(key) {
      case 3: // F1 - delete
        delidx = idx;
        while(var[delidx] != 0) {
          var[delidx] = var[delidx+1];
          delidx++;
        }
        delidx = strlen(var);
        var[delidx] = 0;
        gotoxy(x,y);
        cputs(var);
        cputs(" ");
        break;
      case 7: // F3 - erase line
        var[idx] = 0;
        delidx = idx + 1;
        while(var[delidx] != 0) {
          var[delidx] = 0;
          delidx++;
        }
        gotoxy(x+idx,y);
        cclear(40-(x+idx));
        break;
      case 8: // left arrow
        if (idx > 0) {
          gotoxy(x+idx,y);
          cputc(var[idx]);
          idx--;
          gotoxy(x+idx,y);
        }
        break;
      case 9: // right arrow
        if (var[idx] != 0) {
          cputc(var[idx]);
          idx++;
        }
        break;
      case 13: // return
        break;
      default: // alpha numeric
        if (key >= 32 && key <= 122) {
          var[idx++] = key;
          cputc(key);
        }
    }
  }
  int i=0;
  while(var[i] != 32) {
    i++;
  }
  var[i] = 0;
}

void writeConfigItem(struct PAB* pab, const char* key, const char* value) {
  unsigned char line[81];
  int lenkey = strlen(key);
  strcpy(line, key);
  strcpy(line+lenkey, "=");
  strcpy(line+lenkey+1, value);
  unsigned char ferr = dsr_write(pab, line);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    halt();
  }
}

void savePiConfig() {
  if (disks_dirty == 0 && wifi_dirty == 0) {
    gotoxy(0,4);
    cputs("No changes");
    return;
  }

  struct PAB pab;

  gotoxy(0,4);
  cputs("Saving PI.CONFIG");
  
  unsigned char ferr = dsr_openDV(&pab, PI_CONFIG, FBUF, DSR_TYPE_APPEND);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    halt();
  }

  unsigned char line[81];

  if (disks_dirty) {
    writeConfigItem(&pab, "DSK1_DIR", dsk1_dir);
    writeConfigItem(&pab, "DSK2_DIR", dsk2_dir);
    writeConfigItem(&pab, "DSK3_DIR", dsk3_dir);
    writeConfigItem(&pab, "URI1", uri1);
    writeConfigItem(&pab, "URI2", uri2);
    writeConfigItem(&pab, "URI3", uri3);
    writeConfigItem(&pab, "AUTO", automap);
  }

  if (wifi_dirty) {
    writeConfigItem(&pab, "WIFI_SSID", wifi_ssid);
    writeConfigItem(&pab, "WIFI_PSK", wifi_psk);
  }

  ferr = dsr_close(&pab);
  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }
  gotoxy(0,4);
  cclear(40);
}

void upgrade() {
  struct PAB pab;

  unsigned char ferr = dsr_openDV(&pab, PI_UPGRADE, FBUF, DSR_TYPE_INPUT);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    return;
  }

  ferr = dsr_close(&pab);
  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }

  spinnerMessage(10, "Starting upgrade...");
  spinnerPoll("upgrade running...");
  reload();
  statusMessage("Upgrade complete!");
}

void shutdown() {
  struct PAB pab;

  unsigned char ferr = dsr_openDV(&pab, PI_SHUTDOWN, FBUF, DSR_TYPE_INPUT);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    return;
  }

  ferr = dsr_close(&pab);
  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }

  spinnerMessage(60, "Halting PI...");
  statusMessage("It should be safe to poweroff PI");
}

void reboot() {
  struct PAB pab;

  unsigned char ferr = dsr_openDV(&pab, PI_REBOOT, FBUF, DSR_TYPE_INPUT);
  if (ferr) {
    cprintf(" ERROR: %x", ferr);
    return;
  }

  ferr = dsr_close(&pab);
  if (ferr) {
    cprintf("Close ERROR: %x", ferr);
    halt();
  }
  spinnerMessage(10, "Rebooting PI");
  spinnerPoll("waiting for reboot");
  reload();
  statusMessage("PI reboot complete");
}

void statusMessage(const char* msg) {
  gotoxy(0,4);
  cclear(40);
  gotoxy(0,4);
  cputs(msg);
}

void spinnerMessage(int seconds, const char* msg) {
  gotoxy(0,4);
  cclear(40);
  gotoxy(2,4);
  cputs(msg);
  for (int i=0; i<(seconds * 4); i++) {
     waitjiffies(15);
     int c = i % 4;
     gotoxy(0,4);
     cputc(spinner[c]);
     VDP_INT_POLL;
  }
  gotoxy(0,4);
  cclear(40);
}

void spinnerPoll(const char* msg) {
  gotoxy(0,4);
  cclear(40);
  gotoxy(2,4);
  cputs(msg);
  unsigned char pi_rc = 0xff;
  int i=0;
  while(pi_rc != 0x00) {
    waitjiffies(7);
    int c = i % 4;
    gotoxy(0,4);
    cputc(spinner[c]);
    VDP_INT_POLL;
    // read pi_rc value
    pi_rc = getRC(); // this waits 1/8 second so led flashes.
    i = i + 1;
  }
  gotoxy(0,4);
  cclear(40);
}

//---- the following are meant to be easy, not fast ----

void initPab(struct PAB* pab) {
  pab->OpCode = DSR_OPEN;
  pab->Status = DSR_TYPE_DISPLAY | DSR_TYPE_VARIABLE | DSR_TYPE_SEQUENTIAL | DSR_TYPE_INPUT;
  pab->RecordLength = 80;
  pab->RecordNumber = 0;
  pab->ScreenOffset = 0;
  pab->NameLength = 0;
  pab->CharCount = 0;
}

// Configures a PAB for filename and DV80, and opens the file
unsigned char dsr_openDV(struct PAB* pab, char* fname, int vdpbuffer, unsigned char flags) {
  initPab(pab);
  pab->OpCode = DSR_OPEN;
  pab->Status = DSR_TYPE_DISPLAY | DSR_TYPE_VARIABLE | DSR_TYPE_SEQUENTIAL | flags;
  pab->RecordLength = 80;
  pab->pName = fname;
  pab->VDPBuffer = vdpbuffer;

  return dsrlnk(pab, VPAB);
}

unsigned char dsr_close(struct PAB* pab) {
  pab->OpCode = DSR_CLOSE;

  return dsrlnk(pab, VPAB);
}

// the data read is in FBUF, the length read in pab->CharCount
// typically passing 0 in for record number will let the controller
// auto-increment it. 
unsigned char dsr_read(struct PAB* pab, int recordNumber) {
  pab->OpCode = DSR_READ;
  pab->RecordNumber = recordNumber;
  pab->CharCount = 0;

  unsigned char result = dsrlnk(pab, VPAB);
  vdpmemread(VPAB + 5, (&pab->CharCount), 1);
  return result;
}

unsigned char dsr_write(struct PAB* pab, unsigned char* record) {
  pab->OpCode = DSR_WRITE;
  int len = strlen(record);
  vdpmemcpy(pab->VDPBuffer, record, len);
  pab->CharCount = len;

  return dsrlnk(pab, VPAB);
}

// weird string state toggle
void toggleAutomap() {
  if (0 == strcmp(automap, "on")) {
    strcpy(automap, "off");
  } else {
    strcpy(automap, "on");
  }
}

// utilities

int strcmp(const char* a, const char* b) {
  int i=0;
  do {
    if (a[i] == '\0') {
      return a[i] - b[i];
    }
    i++;
  } while(a[i] == b[i]);
  return a[i] - b[i];
}

int indexof(const char* str, char c) {
  int i=0;
  while(str[i] != 0) {
    if (str[i] == c) {
      return i;
    }
    i++;
  }
  return -1;
}
