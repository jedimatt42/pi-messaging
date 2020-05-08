EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "VS-TIPI - TI-99/4A to RPi adapter for Speech Synth. Case"
Date "2020-04-29"
Rev "V0"
Comp "J-Data "
Comment1 "github.com/jedimatt42/tipi"
Comment2 "TIPI and ElectricLab & Jedimatt42"
Comment3 "(C) 1983 - J-Data (Open source actually)"
Comment4 ""
$EndDescr
$Comp
L vs-tipi:TI-99_Sideport P1
U 1 1 5917E4FB
P 2650 7050
F 0 "P1" H 2300 8200 60  0000 C CNN
F 1 "TI-99_Sideport" H 2700 5900 60  0000 C CNN
F 2 "peb-edge-card:ti99-exp-edge" H 2650 8350 60  0001 C CNN
F 3 "" H 2650 8350 60  0001 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:27C256 U2
U 1 1 5917F7B0
P 2750 2500
F 0 "U2" H 2600 3500 50  0000 C CNN
F 1 "27C256" H 3000 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 2750 2500 50  0001 C CNN
F 3 "" H 2750 2500 50  0001 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:74LS245 U3
U 1 1 5917F86D
P 14300 5250
F 0 "U3" H 14400 5825 50  0000 L BNN
F 1 "74HCT245" H 14350 4675 50  0000 L TNN
F 2 "SMD_Packages:SSOP-20" H 14300 5250 50  0001 C CNN
F 3 "" H 14300 5250 50  0001 C CNN
	1    14300 5250
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C6
U 1 1 5917FDFE
P 10050 8350
F 0 "C6" H 10050 8500 50  0000 L CNN
F 1 "0.1uf" H 10000 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10050 8350 50  0001 C CNN
F 3 "" H 10050 8350 50  0001 C CNN
	1    10050 8350
	1    0    0    -1  
$EndComp
Text GLabel 15000 5050 2    60   BiDi ~ 0
TI_D0
Text GLabel 15000 4950 2    60   BiDi ~ 0
TI_D1
Text GLabel 15000 4850 2    60   BiDi ~ 0
TI_D2
Text GLabel 15000 4750 2    60   BiDi ~ 0
TI_D3
Text GLabel 15000 5250 2    60   BiDi ~ 0
TI_D4
Text GLabel 15000 5150 2    60   BiDi ~ 0
TI_D5
Text GLabel 15000 5350 2    60   BiDi ~ 0
TI_D6
Text GLabel 15000 5450 2    60   BiDi ~ 0
TI_D7
Text GLabel 3400 6300 2    60   BiDi ~ 0
TI_D0
Text GLabel 1900 6200 0    60   BiDi ~ 0
TI_D1
Text GLabel 3400 6200 2    60   BiDi ~ 0
TI_D2
Text GLabel 1900 6100 0    60   BiDi ~ 0
TI_D3
Text GLabel 3400 6400 2    60   BiDi ~ 0
TI_D4
Text GLabel 1900 6300 0    60   BiDi ~ 0
TI_D5
Text GLabel 1900 6400 0    60   BiDi ~ 0
TI_D6
Text GLabel 1900 6500 0    60   BiDi ~ 0
TI_D7
Text GLabel 1900 6700 0    60   Output ~ 0
TI_A1
Text GLabel 1900 6900 0    60   Output ~ 0
TI_WE
Text GLabel 1900 6600 0    60   Output ~ 0
TI_MEMEN
Text GLabel 1900 7100 0    60   Output ~ 0
TI_CRUCLK
Text GLabel 1900 7200 0    60   Output ~ 0
TI_A2
Text GLabel 1900 7300 0    60   Output ~ 0
TI_A9
Text GLabel 1900 7400 0    60   Output ~ 0
TI_A14
Text GLabel 1900 7500 0    60   Output ~ 0
TI_A8
Text GLabel 1900 7700 0    60   Output ~ 0
TI_A3
Text GLabel 1900 7800 0    60   Output ~ 0
TI_A11
Text GLabel 1900 7900 0    60   Output ~ 0
TI_A10
Text GLabel 3400 6600 2    60   Output ~ 0
TI_A0
Text GLabel 3400 6700 2    60   Output ~ 0
TI_A6
$Comp
L power:GND #PWR02
U 1 1 591A49E4
P 3400 6900
F 0 "#PWR02" H 3400 6650 50  0001 C CNN
F 1 "GND" H 3400 6750 50  0000 C CNN
F 2 "" H 3400 6900 50  0001 C CNN
F 3 "" H 3400 6900 50  0001 C CNN
	1    3400 6900
	0    -1   -1   0   
$EndComp
Text GLabel 3400 7200 2    60   Output ~ 0
TI_A15
Text GLabel 3400 7300 2    60   Output ~ 0
TI_A7
Text GLabel 3400 7400 2    60   Output ~ 0
TI_A13
Text GLabel 3400 7600 2    60   Output ~ 0
TI_A12
Text GLabel 3400 7800 2    60   Output ~ 0
TI_A4
Text GLabel 3400 7900 2    60   Output ~ 0
TI_A5
$Comp
L power:+5V #PWR03
U 1 1 591A50F1
P 3500 8300
F 0 "#PWR03" H 3500 8150 50  0001 C CNN
F 1 "+5V" H 3500 8440 50  0000 C CNN
F 2 "" H 3500 8300 50  0001 C CNN
F 3 "" H 3500 8300 50  0001 C CNN
	1    3500 8300
	1    0    0    -1  
$EndComp
Text GLabel 9000 3550 0    60   Output ~ 0
R_RESET
Text GLabel 9000 3450 0    60   Input ~ 0
R_DC
Text GLabel 9000 3950 0    60   Input ~ 0
R_RT
Text GLabel 9000 3650 0    60   Output ~ 0
R_DIN
Text GLabel 9000 3850 0    60   Input ~ 0
R_DOUT
Text GLabel 9000 3050 0    60   Input ~ 0
R_CLK
Text GLabel 9000 3750 0    60   Input ~ 0
R_LE
Text GLabel 11400 4450 2    60   Output ~ 0
CRU0
Text GLabel 11400 6750 2    60   Input ~ 0
JTAG_TCK
Text GLabel 11400 6550 2    60   Input ~ 0
JTAG_TDI
Text GLabel 11400 6850 2    60   Output ~ 0
JTAG_TDO
Text GLabel 11400 6650 2    60   Input ~ 0
JTAG_TMS
$Comp
L vs-tipi:AVR-JTAG-10 JTAG1
U 1 1 591AA716
P 14750 1600
F 0 "JTAG1" H 14580 1930 50  0000 C CNN
F 1 "AVR-JTAG-10" H 14410 1270 50  0000 L BNN
F 2 "Connect:IDC_Header_Straight_10pins" V 14180 1620 50  0001 C CNN
F 3 "" H 14750 1600 50  0001 C CNN
	1    14750 1600
	1    0    0    -1  
$EndComp
Text GLabel 13800 1400 0    60   Output ~ 0
JTAG_TCK
Text GLabel 13800 1500 0    60   Input ~ 0
JTAG_TDO
Text GLabel 13800 1600 0    60   Output ~ 0
JTAG_TMS
Text GLabel 13800 1800 0    60   Output ~ 0
JTAG_TDI
$Comp
L power:GND #PWR06
U 1 1 591AAD23
P 15200 1900
F 0 "#PWR06" H 15200 1650 50  0001 C CNN
F 1 "GND" H 15200 1750 50  0000 C CNN
F 2 "" H 15200 1900 50  0001 C CNN
F 3 "" H 15200 1900 50  0001 C CNN
	1    15200 1900
	1    0    0    -1  
$EndComp
Text GLabel 9000 6350 0    60   Input ~ 0
TI_A0
Text GLabel 9000 6250 0    60   Input ~ 0
TI_A1
Text GLabel 9000 5950 0    60   Input ~ 0
TI_A2
Text GLabel 11400 3850 2    60   Input ~ 0
TI_A3
Text GLabel 11400 3750 2    60   Input ~ 0
TI_A4
Text GLabel 11400 3550 2    60   Input ~ 0
TI_A5
Text GLabel 9000 6150 0    60   Input ~ 0
TI_A6
Text GLabel 9000 5650 0    60   Input ~ 0
TI_A7
Text GLabel 11400 4150 2    60   Input ~ 0
TI_A8
Text GLabel 9000 5750 0    60   Input ~ 0
TI_A9
Text GLabel 11400 3450 2    60   Input ~ 0
TI_A10
Text GLabel 11400 3650 2    60   Input ~ 0
TI_A11
Text GLabel 11400 4050 2    60   Input ~ 0
TI_A12
Text GLabel 9000 5450 0    60   Input ~ 0
TI_A13
Text GLabel 9000 5550 0    60   Input ~ 0
TI_A14
Text GLabel 9000 5850 0    60   Input ~ 0
TI_A15
Text GLabel 9000 6050 0    60   Input ~ 0
TI_WE
Text GLabel 9000 3250 0    60   Input ~ 0
TI_MEMEN
Text GLabel 11400 3950 2    60   Input ~ 0
TI_DBIN
Text GLabel 9000 4350 0    60   Input ~ 0
TI_CRUCLK
Text GLabel 3400 7700 2    60   Output ~ 0
TI_DBIN
Text GLabel 3400 6500 2    60   Input ~ 0
TI_CRUIN
Text GLabel 2050 1600 0    60   Input ~ 0
TI_A15
Text GLabel 2050 1700 0    60   Input ~ 0
TI_A14
Text GLabel 2050 1800 0    60   Input ~ 0
TI_A13
Text GLabel 2050 1900 0    60   Input ~ 0
TI_A12
Text GLabel 2050 2000 0    60   Input ~ 0
TI_A11
Text GLabel 2050 2100 0    60   Input ~ 0
TI_A10
Text GLabel 2050 2200 0    60   Input ~ 0
TI_A9
Text GLabel 2050 2300 0    60   Input ~ 0
TI_A8
Text GLabel 2050 2500 0    60   Input ~ 0
TI_A6
Text GLabel 2050 2400 0    60   Input ~ 0
TI_A7
Text GLabel 2050 2600 0    60   Input ~ 0
TI_A5
Text GLabel 2050 2700 0    60   Input ~ 0
TI_A4
Text GLabel 2050 2800 0    60   Input ~ 0
TI_A3
Text GLabel 2050 2900 0    60   Input ~ 0
DSR_B0
Text GLabel 2050 3000 0    60   Input ~ 0
DSR_B1
Text GLabel 3450 1600 2    60   3State ~ 0
TP_D0
Text GLabel 3450 1700 2    60   3State ~ 0
TP_D1
Text GLabel 3450 1800 2    60   3State ~ 0
TP_D2
Text GLabel 3450 1900 2    60   3State ~ 0
TP_D3
Text GLabel 3450 2000 2    60   3State ~ 0
TP_D4
Text GLabel 3450 2100 2    60   3State ~ 0
TP_D5
Text GLabel 3450 2200 2    60   3State ~ 0
TP_D6
Text GLabel 3450 2300 2    60   3State ~ 0
TP_D7
Text GLabel 9000 2050 0    60   3State ~ 0
TP_D0
Text GLabel 9000 2150 0    60   3State ~ 0
TP_D1
Text GLabel 9000 2250 0    60   3State ~ 0
TP_D2
Text GLabel 9000 2450 0    60   3State ~ 0
TP_D3
Text GLabel 9000 2350 0    60   3State ~ 0
TP_D4
Text GLabel 9000 2550 0    60   3State ~ 0
TP_D5
Text GLabel 9000 2650 0    60   3State ~ 0
TP_D6
Text GLabel 9000 2750 0    60   3State ~ 0
TP_D7
Text GLabel 13600 5450 0    60   3State ~ 0
TP_D0
Text GLabel 13600 5350 0    60   3State ~ 0
TP_D1
Text GLabel 13600 5150 0    60   3State ~ 0
TP_D2
Text GLabel 13600 5250 0    60   3State ~ 0
TP_D3
Text GLabel 13600 4750 0    60   3State ~ 0
TP_D4
Text GLabel 13600 4850 0    60   3State ~ 0
TP_D5
Text GLabel 13600 4950 0    60   3State ~ 0
TP_D6
Text GLabel 13600 5050 0    60   3State ~ 0
TP_D7
$Comp
L power:+5V #PWR07
U 1 1 594E090D
P 1700 3100
F 0 "#PWR07" H 1700 2950 50  0001 C CNN
F 1 "+5V" H 1700 3240 50  0000 C CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    1700 3100
	-1   0    0    1   
$EndComp
Text GLabel 1950 3400 0    60   Input ~ 0
DSR_EN
Text GLabel 11400 5250 2    60   Output ~ 0
DSR_EN
Text GLabel 11400 2050 2    60   Output ~ 0
DB_EN
Text GLabel 9000 5150 0    60   Output ~ 0
DB_DIR
Text GLabel 13600 5650 0    60   Input ~ 0
DB_DIR
Text GLabel 13600 5750 0    60   Input ~ 0
DB_EN
Text GLabel 9000 4850 0    60   Output ~ 0
DSR_B0
Text GLabel 9000 4950 0    60   Output ~ 0
DSR_B1
Text GLabel 9000 3350 0    60   Output ~ 0
TI_CRUIN
$Comp
L vs-tipi:LM1117-3.3 U4
U 1 1 594EAE75
P 13550 8150
F 0 "U4" H 13650 7900 50  0000 C CNN
F 1 "LM1117-3.3" H 13550 8400 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 13550 8150 50  0001 C CNN
F 3 "" H 13550 8150 50  0001 C CNN
	1    13550 8150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 594EAFBA
P 13550 8450
F 0 "#PWR08" H 13550 8200 50  0001 C CNN
F 1 "GND" H 13550 8300 50  0000 C CNN
F 2 "" H 13550 8450 50  0001 C CNN
F 3 "" H 13550 8450 50  0001 C CNN
	1    13550 8450
	-1   0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor_Poll C2
U 1 1 594EB02A
P 13150 8250
F 0 "C2" H 13160 8320 50  0000 L CNN
F 1 "22uf" H 13160 8170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13150 8250 50  0001 C CNN
F 3 "" H 13150 8250 50  0001 C CNN
	1    13150 8250
	-1   0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor_Poll C1
U 1 1 594EB077
P 13950 8250
F 0 "C1" H 13750 8300 50  0000 L CNN
F 1 "10uf" H 13750 8150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 13950 8250 50  0001 C CNN
F 3 "" H 13950 8250 50  0001 C CNN
	1    13950 8250
	-1   0    0    -1  
$EndComp
$Comp
L vs-tipi:Resistor R2
U 1 1 594FDB4A
P 14200 6600
F 0 "R2" V 14280 6600 50  0000 C CNN
F 1 "330" V 14100 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 14130 6600 50  0001 C CNN
F 3 "" H 14200 6600 50  0001 C CNN
	1    14200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 594FDBD5
P 14200 6500
F 0 "#PWR011" H 14200 6350 50  0001 C CNN
F 1 "+5V" H 14200 6640 50  0000 C CNN
F 2 "" H 14200 6500 50  0001 C CNN
F 3 "" H 14200 6500 50  0001 C CNN
	1    14200 6500
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:NPN_BCE Q1
U 1 1 594FDE57
P 14100 7200
F 0 "Q1" V 14000 7100 50  0000 L CNN
F 1 "NPN_BCE" H 14300 7200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 14300 7300 50  0001 C CNN
F 3 "" H 14100 7200 50  0001 C CNN
	1    14100 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 594FDF4A
P 14200 7400
F 0 "#PWR012" H 14200 7150 50  0001 C CNN
F 1 "GND" H 14200 7250 50  0000 C CNN
F 2 "" H 14200 7400 50  0001 C CNN
F 3 "" H 14200 7400 50  0001 C CNN
	1    14200 7400
	1    0    0    -1  
$EndComp
Text GLabel 13550 7200 0    60   Input ~ 0
CRU0
$Comp
L vs-tipi:CONN_02X04 CRUBASE1
U 1 1 594FE925
P 14350 2600
F 0 "CRUBASE1" H 14350 2850 50  0000 C CNN
F 1 "CONN_02X04" H 14350 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 14350 1400 50  0001 C CNN
F 3 "" H 14350 1400 50  0001 C CNN
	1    14350 2600
	-1   0    0    1   
$EndComp
Text GLabel 14100 2750 0    60   Output ~ 0
CRUB_0
Text GLabel 14100 2650 0    60   Output ~ 0
CRUB_1
Text GLabel 14100 2550 0    60   Output ~ 0
CRUB_2
Text GLabel 14100 2450 0    60   Output ~ 0
CRUB_3
Text GLabel 11400 6050 2    60   Input ~ 0
CRUB_0
Text GLabel 11400 6150 2    60   Input ~ 0
CRUB_1
Text GLabel 11400 6250 2    60   Input ~ 0
CRUB_2
Text GLabel 11400 6350 2    60   Input ~ 0
CRUB_3
Text GLabel 1900 7000 0    60   Output ~ 0
TI_PH3
Text GLabel 9000 4650 0    60   Input ~ 0
TI_PH3
Wire Wire Line
	1900 6100 2050 6100
Wire Wire Line
	1900 6200 2050 6200
Wire Wire Line
	1900 6300 2050 6300
Wire Wire Line
	1900 6400 2050 6400
Wire Wire Line
	1900 6500 2050 6500
Wire Wire Line
	3250 6400 3400 6400
Wire Wire Line
	3250 6300 3400 6300
Wire Wire Line
	3250 6200 3400 6200
Wire Wire Line
	3250 6800 3350 6800
Wire Wire Line
	3350 6800 3350 6900
Wire Wire Line
	3350 7100 3250 7100
Wire Wire Line
	3250 6900 3350 6900
Connection ~ 3350 6900
Wire Wire Line
	3250 7000 3350 7000
Connection ~ 3350 7000
Wire Wire Line
	3250 6600 3400 6600
Wire Wire Line
	3250 6700 3400 6700
Wire Wire Line
	3250 7200 3400 7200
Wire Wire Line
	3250 7300 3400 7300
Wire Wire Line
	3250 7400 3400 7400
Wire Wire Line
	3250 7600 3400 7600
Wire Wire Line
	3250 7800 3400 7800
Wire Wire Line
	3250 7900 3400 7900
Wire Wire Line
	2050 7900 1900 7900
Wire Wire Line
	2050 7800 1900 7800
Wire Wire Line
	2050 7700 1900 7700
Wire Wire Line
	2050 7500 1900 7500
Wire Wire Line
	2050 7400 1900 7400
Wire Wire Line
	2050 7300 1900 7300
Wire Wire Line
	2050 7200 1900 7200
Wire Wire Line
	2050 7100 1900 7100
Wire Wire Line
	2050 6900 1900 6900
Wire Wire Line
	2050 6700 1900 6700
Wire Wire Line
	2050 6600 1900 6600
Wire Wire Line
	3250 7700 3400 7700
Wire Wire Line
	3250 6500 3400 6500
Wire Wire Line
	1700 3100 2050 3100
Wire Wire Line
	2050 3300 2050 3400
Wire Wire Line
	2050 3400 1950 3400
Wire Wire Line
	13950 8450 13550 8450
Wire Wire Line
	13950 8450 13950 8350
Wire Wire Line
	13150 8450 13150 8350
Connection ~ 13550 8450
Wire Wire Line
	13250 8150 13150 8150
Connection ~ 14600 2650
Connection ~ 14600 2550
Wire Wire Line
	1900 7000 2050 7000
Text GLabel 1900 8000 0    60   Input ~ 0
TI_EXTINT
Wire Wire Line
	1900 8000 2050 8000
Text GLabel 11400 3350 2    60   Output ~ 0
TI_EXTINT
$Comp
L power:+5V #PWR014
U 1 1 59584F63
P 2750 1450
F 0 "#PWR014" H 2750 1300 50  0001 C CNN
F 1 "+5V" H 2750 1590 50  0000 C CNN
F 2 "" H 2750 1450 50  0001 C CNN
F 3 "" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1450 2750 1500
$Comp
L power:GND #PWR015
U 1 1 59585050
P 2750 3550
F 0 "#PWR015" H 2750 3300 50  0001 C CNN
F 1 "GND" H 2750 3400 50  0000 C CNN
F 2 "" H 2750 3550 50  0001 C CNN
F 3 "" H 2750 3550 50  0001 C CNN
	1    2750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3550 2750 3500
NoConn ~ 14800 1600
NoConn ~ 14800 1700
NoConn ~ 14550 1700
Wire Wire Line
	3400 2800 3400 2700
$Comp
L Device:C_Small C10
U 1 1 595963F1
P 15200 5850
F 0 "C10" H 15210 5920 50  0000 L CNN
F 1 "0.1uf" H 15210 5770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 15200 5850 50  0001 C CNN
F 3 "" H 15200 5850 50  0001 C CNN
	1    15200 5850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5959655E
P 14300 4500
F 0 "#PWR017" H 14300 4350 50  0001 C CNN
F 1 "+5V" H 14300 4640 50  0000 C CNN
F 2 "" H 14300 4500 50  0001 C CNN
F 3 "" H 14300 4500 50  0001 C CNN
	1    14300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 4500 14300 4700
$Comp
L power:GND #PWR018
U 1 1 59596997
P 14300 5900
F 0 "#PWR018" H 14300 5650 50  0001 C CNN
F 1 "GND" H 14300 5750 50  0000 C CNN
F 2 "" H 14300 5900 50  0001 C CNN
F 3 "" H 14300 5900 50  0001 C CNN
	1    14300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 5950 15200 6000
$Comp
L vs-tipi:Resistor R5
U 1 1 59612F26
P 14100 1150
F 0 "R5" H 14100 1300 50  0000 L CNN
F 1 "10k" V 14150 1100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 14100 1150 50  0001 C CNN
F 3 "" H 14100 1150 50  0001 C CNN
	1    14100 1150
	-1   0    0    1   
$EndComp
$Comp
L vs-tipi:Resistor R6
U 1 1 59612F85
P 14250 1150
F 0 "R6" H 14250 1300 50  0000 L CNN
F 1 "10k" V 14300 1100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 14250 1150 50  0001 C CNN
F 3 "" H 14250 1150 50  0001 C CNN
	1    14250 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 596AC072
P 14900 2750
F 0 "#PWR021" H 14900 2500 50  0001 C CNN
F 1 "GND" H 14900 2600 50  0000 C CNN
F 2 "" H 14900 2750 50  0001 C CNN
F 3 "" H 14900 2750 50  0001 C CNN
	1    14900 2750
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C7
U 1 1 596F064F
P 10300 8350
F 0 "C7" H 10300 8500 50  0000 L CNN
F 1 "0.1uf" H 10250 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10300 8350 50  0001 C CNN
F 3 "" H 10300 8350 50  0001 C CNN
	1    10300 8350
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C8
U 1 1 596F06B9
P 10550 8350
F 0 "C8" H 10550 8500 50  0000 L CNN
F 1 "0.1uf" H 10500 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10550 8350 50  0001 C CNN
F 3 "" H 10550 8350 50  0001 C CNN
	1    10550 8350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 596F06BF
P 11050 8250
F 0 "#PWR022" H 11050 8100 50  0001 C CNN
F 1 "+3.3V" H 11050 8390 50  0000 C CNN
F 2 "" H 11050 8250 50  0001 C CNN
F 3 "" H 11050 8250 50  0001 C CNN
	1    11050 8250
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C9
U 1 1 596F06CB
P 10800 8350
F 0 "C9" H 10800 8500 50  0000 L CNN
F 1 "0.1uf" H 10750 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10800 8350 50  0001 C CNN
F 3 "" H 10800 8350 50  0001 C CNN
	1    10800 8350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 596F06D1
P 10800 1550
F 0 "#PWR023" H 10800 1400 50  0001 C CNN
F 1 "+3.3V" H 10800 1690 50  0000 C CNN
F 2 "" H 10800 1550 50  0001 C CNN
F 3 "" H 10800 1550 50  0001 C CNN
	1    10800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 596F06D7
P 11050 8450
F 0 "#PWR024" H 11050 8200 50  0001 C CNN
F 1 "GND" H 11050 8300 50  0000 C CNN
F 2 "" H 11050 8450 50  0001 C CNN
F 3 "" H 11050 8450 50  0001 C CNN
	1    11050 8450
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C5
U 1 1 596F0DF9
P 9800 8350
F 0 "C5" H 9800 8500 50  0000 L CNN
F 1 "0.1uf" H 9750 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9800 8350 50  0001 C CNN
F 3 "" H 9800 8350 50  0001 C CNN
	1    9800 8350
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C4
U 1 1 596F0E6D
P 9550 8350
F 0 "C4" H 9550 8500 50  0000 L CNN
F 1 "0.1uf" H 9500 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9550 8350 50  0001 C CNN
F 3 "" H 9550 8350 50  0001 C CNN
	1    9550 8350
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Capacitor C3
U 1 1 596F0E7F
P 9300 8350
F 0 "C3" H 9300 8500 50  0000 L CNN
F 1 "0.1uf" H 9250 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9300 8350 50  0001 C CNN
F 3 "" H 9300 8350 50  0001 C CNN
	1    9300 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1550 9900 1550
Connection ~ 9900 1550
Connection ~ 10000 1550
Connection ~ 10300 1550
Connection ~ 10400 1550
Connection ~ 10500 1550
Connection ~ 10600 1550
Wire Wire Line
	9300 8250 9550 8250
Connection ~ 9550 8250
Connection ~ 9800 8250
Connection ~ 10050 8250
Connection ~ 10300 8250
Connection ~ 10550 8250
Connection ~ 10800 8250
Wire Wire Line
	9300 8450 9550 8450
Connection ~ 9550 8450
Connection ~ 9800 8450
Connection ~ 10050 8450
Connection ~ 10300 8450
Connection ~ 10550 8450
Connection ~ 10800 8450
$Comp
L power:GND #PWR025
U 1 1 596F5164
P 9750 7400
F 0 "#PWR025" H 9750 7150 50  0001 C CNN
F 1 "GND" H 9750 7250 50  0000 C CNN
F 2 "" H 9750 7400 50  0001 C CNN
F 3 "" H 9750 7400 50  0001 C CNN
	1    9750 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 7350 9900 7350
Connection ~ 9900 7350
Connection ~ 10000 7350
Connection ~ 10100 7350
Connection ~ 10200 7350
Connection ~ 10300 7350
Connection ~ 10400 7350
$Comp
L vs-tipi:XC95144XL-TQ100 U1
U 1 1 596EEAA9
P 10200 4450
F 0 "U1" H 9350 7100 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 10900 1800 50  0000 C CNN
F 2 "Housings_QFP:TQFP-100_14x14mm_Pitch0.5mm" H 11450 1700 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10200 4450
	1    0    0    -1  
$EndComp
$Comp
L vs-tipi:Resistor R3
U 1 1 599E6C64
P 14900 2600
F 0 "R3" V 14980 2600 50  0000 C CNN
F 1 "1k" V 14800 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 14830 2600 50  0001 C CNN
F 3 "" H 14900 2600 50  0001 C CNN
	1    14900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6900 3350 7000
Wire Wire Line
	3350 6900 3400 6900
Wire Wire Line
	3350 7000 3350 7100
Wire Wire Line
	13550 8450 13150 8450
Wire Wire Line
	13950 8150 13850 8150
Wire Wire Line
	14600 2750 14600 2650
Wire Wire Line
	14600 2650 14600 2550
Wire Wire Line
	14600 2550 14600 2450
Wire Wire Line
	9900 1550 10000 1550
Wire Wire Line
	10000 1550 10300 1550
Wire Wire Line
	10300 1550 10400 1550
Wire Wire Line
	10400 1550 10500 1550
Wire Wire Line
	10500 1550 10600 1550
Wire Wire Line
	10600 1550 10800 1550
Wire Wire Line
	9550 8250 9800 8250
Wire Wire Line
	9800 8250 10050 8250
Wire Wire Line
	10050 8250 10300 8250
Wire Wire Line
	10300 8250 10550 8250
Wire Wire Line
	10550 8250 10800 8250
Wire Wire Line
	10800 8250 11050 8250
Wire Wire Line
	9550 8450 9800 8450
Wire Wire Line
	9800 8450 10050 8450
Wire Wire Line
	10050 8450 10300 8450
Wire Wire Line
	10300 8450 10550 8450
Wire Wire Line
	10550 8450 10800 8450
Wire Wire Line
	10800 8450 11050 8450
Wire Wire Line
	9900 7350 10000 7350
Wire Wire Line
	10000 7350 10100 7350
Wire Wire Line
	10100 7350 10200 7350
Wire Wire Line
	10200 7350 10300 7350
Wire Wire Line
	10300 7350 10400 7350
Wire Wire Line
	10400 7350 10500 7350
Connection ~ 2050 3400
Text GLabel 5350 1600 0    60   Input ~ 0
TI_A15
Text GLabel 5350 1700 0    60   Input ~ 0
TI_A14
Text GLabel 5350 1800 0    60   Input ~ 0
TI_A13
Text GLabel 5350 1900 0    60   Input ~ 0
TI_A12
Text GLabel 5350 2000 0    60   Input ~ 0
TI_A11
Text GLabel 5350 2100 0    60   Input ~ 0
TI_A10
Text GLabel 5350 2200 0    60   Input ~ 0
TI_A9
Text GLabel 5350 2300 0    60   Input ~ 0
TI_A8
Text GLabel 5350 2500 0    60   Input ~ 0
TI_A6
Text GLabel 5350 2400 0    60   Input ~ 0
TI_A7
Text GLabel 5350 2600 0    60   Input ~ 0
TI_A5
Text GLabel 5350 2700 0    60   Input ~ 0
TI_A4
Text GLabel 5350 2800 0    60   Input ~ 0
TI_A3
Text GLabel 5350 2900 0    60   Input ~ 0
TI_A1
Text GLabel 5350 3200 0    60   Input ~ 0
TI_WE
Text GLabel 6750 1600 2    60   3State ~ 0
TP_D0
Text GLabel 6750 1700 2    60   3State ~ 0
TP_D1
Text GLabel 6750 1800 2    60   3State ~ 0
TP_D2
Text GLabel 6750 1900 2    60   3State ~ 0
TP_D3
Text GLabel 6750 2000 2    60   3State ~ 0
TP_D4
Text GLabel 6750 2100 2    60   3State ~ 0
TP_D5
Text GLabel 6750 2200 2    60   3State ~ 0
TP_D6
Text GLabel 6750 2300 2    60   3State ~ 0
TP_D7
Text GLabel 5250 3400 0    60   Input ~ 0
DRAM_EN
Wire Wire Line
	5350 3400 5250 3400
$Comp
L Device:C_Small C12
U 1 1 5EA13D89
P 6850 2900
F 0 "C12" H 6860 2970 50  0000 L CNN
F 1 "0.1uf" H 6860 2820 50  0000 L CNN
F 2 "VS-TIPI-kicad:C_0805_HandSoldering" H 6850 2900 50  0001 C CNN
F 3 "" H 6850 2900 50  0001 C CNN
	1    6850 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 59595B0D
P 3400 2900
F 0 "C11" H 3410 2970 50  0000 L CNN
F 1 "0.1uf" H 3410 2820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5EAD1BD6
P 3400 3000
F 0 "#PWR026" H 3400 2750 50  0001 C CNN
F 1 "GND" H 3400 2850 50  0000 C CNN
F 2 "" H 3400 3000 50  0001 C CNN
F 3 "" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5EAD8203
P 6850 3050
F 0 "#PWR030" H 6850 2800 50  0001 C CNN
F 1 "GND" H 6850 2900 50  0000 C CNN
F 2 "" H 6850 3050 50  0001 C CNN
F 3 "" H 6850 3050 50  0001 C CNN
	1    6850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3000 6850 3050
$Comp
L power:+5V #PWR029
U 1 1 5EAF493C
P 6850 2700
F 0 "#PWR029" H 6850 2550 50  0001 C CNN
F 1 "+5V" H 6850 2840 50  0000 C CNN
F 2 "" H 6850 2700 50  0001 C CNN
F 3 "" H 6850 2700 50  0001 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2700 6850 2800
Wire Wire Line
	5350 3300 5350 3400
Text GLabel 11400 5150 2    60   Output ~ 0
DRAM_EN
Text GLabel 11400 2950 2    60   Output ~ 0
DRAM_A0
Text GLabel 5350 3000 0    60   Input ~ 0
DRAM_A0
$Comp
L vs-tipi:CY62256L-70PC U5
U 1 1 5EB840C9
P 6050 2500
F 0 "U5" H 5750 3500 50  0000 C CNN
F 1 "CY62256L-70PC" H 6400 1500 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 6050 2500 50  0001 C CNN
F 3 "" H 6050 2500 50  0001 C CNN
	1    6050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1450 6050 1500
$Comp
L power:GND #PWR028
U 1 1 5EA13D82
P 6050 3550
F 0 "#PWR028" H 6050 3300 50  0001 C CNN
F 1 "GND" H 6050 3400 50  0000 C CNN
F 2 "" H 6050 3550 50  0001 C CNN
F 3 "" H 6050 3550 50  0001 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5EA13D7B
P 6050 1450
F 0 "#PWR027" H 6050 1300 50  0001 C CNN
F 1 "+5V" H 6050 1590 50  0000 C CNN
F 2 "" H 6050 1450 50  0001 C CNN
F 3 "" H 6050 1450 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
Connection ~ 5350 3400
Wire Wire Line
	6050 3500 6050 3550
Text GLabel 6750 6350 2    60   BiDi ~ 0
TI_D0
Text GLabel 5250 6250 0    60   BiDi ~ 0
TI_D1
Text GLabel 6750 6250 2    60   BiDi ~ 0
TI_D2
Text GLabel 5250 6150 0    60   BiDi ~ 0
TI_D3
Text GLabel 6750 6450 2    60   BiDi ~ 0
TI_D4
Text GLabel 5250 6350 0    60   BiDi ~ 0
TI_D5
Text GLabel 5250 6450 0    60   BiDi ~ 0
TI_D6
Text GLabel 5250 6550 0    60   BiDi ~ 0
TI_D7
Text GLabel 5250 6750 0    60   Input ~ 0
TI_A1
Text GLabel 5250 6950 0    60   Output ~ 0
TI_WE
Text GLabel 5250 6650 0    60   Output ~ 0
TI_MEMEN
Text GLabel 5250 7150 0    60   Output ~ 0
TI_CRUCLK
Text GLabel 5250 7250 0    60   Input ~ 0
TI_A2
Text GLabel 5250 7350 0    60   Input ~ 0
TI_A9
Text GLabel 5250 7450 0    60   Input ~ 0
TI_A14
Text GLabel 5250 7550 0    60   Input ~ 0
TI_A8
Text GLabel 5250 7750 0    60   Input ~ 0
TI_A3
Text GLabel 5250 7850 0    60   Input ~ 0
TI_A11
Text GLabel 5250 7950 0    60   Input ~ 0
TI_A10
Text GLabel 6750 6650 2    60   Input ~ 0
TI_A0
Text GLabel 6750 6750 2    60   Input ~ 0
TI_A6
$Comp
L power:GND #PWR032
U 1 1 5EA54255
P 6750 6950
F 0 "#PWR032" H 6750 6700 50  0001 C CNN
F 1 "GND" H 6750 6800 50  0000 C CNN
F 2 "" H 6750 6950 50  0001 C CNN
F 3 "" H 6750 6950 50  0001 C CNN
	1    6750 6950
	0    -1   -1   0   
$EndComp
Text GLabel 6750 7250 2    60   Input ~ 0
TI_A15
Text GLabel 6750 7350 2    60   Input ~ 0
TI_A7
Text GLabel 6750 7450 2    60   Input ~ 0
TI_A13
Text GLabel 6750 7650 2    60   Input ~ 0
TI_A12
Text GLabel 6750 7850 2    60   Input ~ 0
TI_A4
Text GLabel 6750 7950 2    60   Input ~ 0
TI_A5
$Comp
L power:+5V #PWR031
U 1 1 5EA54265
P 7000 8400
F 0 "#PWR031" H 7000 8250 50  0001 C CNN
F 1 "+5V" H 7000 8540 50  0000 C CNN
F 2 "" H 7000 8400 50  0001 C CNN
F 3 "" H 7000 8400 50  0001 C CNN
	1    7000 8400
	1    0    0    -1  
$EndComp
Text GLabel 6750 7750 2    60   Output ~ 0
TI_DBIN
Text GLabel 6750 6550 2    60   Input ~ 0
TI_CRUIN
Text GLabel 5250 7050 0    60   Output ~ 0
TI_PH3
Wire Wire Line
	5250 6150 5400 6150
Wire Wire Line
	5250 6250 5400 6250
Wire Wire Line
	5250 6350 5400 6350
Wire Wire Line
	5250 6450 5400 6450
Wire Wire Line
	5250 6550 5400 6550
Wire Wire Line
	6600 6450 6750 6450
Wire Wire Line
	6600 6350 6750 6350
Wire Wire Line
	6600 6250 6750 6250
Wire Wire Line
	6600 6850 6700 6850
Wire Wire Line
	6700 6850 6700 6950
Wire Wire Line
	6700 7150 6600 7150
Wire Wire Line
	6600 6950 6700 6950
Connection ~ 6700 6950
Wire Wire Line
	6600 7050 6700 7050
Connection ~ 6700 7050
Wire Wire Line
	6600 6650 6750 6650
Wire Wire Line
	6600 6750 6750 6750
Wire Wire Line
	6600 7250 6750 7250
Wire Wire Line
	6600 7350 6750 7350
Wire Wire Line
	6600 7450 6750 7450
Wire Wire Line
	6600 7650 6750 7650
Wire Wire Line
	6600 7850 6750 7850
Wire Wire Line
	6600 7950 6750 7950
Wire Wire Line
	5400 7950 5250 7950
Wire Wire Line
	5400 7850 5250 7850
Wire Wire Line
	5400 7750 5250 7750
Wire Wire Line
	5400 7550 5250 7550
Wire Wire Line
	5400 7450 5250 7450
Wire Wire Line
	5400 7350 5250 7350
Wire Wire Line
	5400 7250 5250 7250
Wire Wire Line
	5400 7150 5250 7150
Wire Wire Line
	5400 6950 5250 6950
Wire Wire Line
	5400 6750 5250 6750
Wire Wire Line
	5400 6650 5250 6650
Wire Wire Line
	6600 7750 6750 7750
Wire Wire Line
	6600 6550 6750 6550
Wire Wire Line
	5250 7050 5400 7050
Text GLabel 5250 8050 0    60   Input ~ 0
TI_EXTINT
Wire Wire Line
	5250 8050 5400 8050
Wire Wire Line
	6700 6950 6700 7050
Wire Wire Line
	6700 6950 6750 6950
Wire Wire Line
	6700 7050 6700 7150
Text GLabel 1900 6000 0    60   BiDi ~ 0
TI_AUD
Text GLabel 5250 6050 0    60   BiDi ~ 0
TI_AUD
Wire Wire Line
	5250 6050 5400 6050
Wire Wire Line
	1900 6000 2050 6000
Text GLabel 3400 6100 2    60   BiDi ~ 0
TI_IAQ
Text GLabel 6750 6150 2    60   BiDi ~ 0
TI_IAQ
Wire Wire Line
	3250 6100 3400 6100
Wire Wire Line
	6600 6150 6750 6150
$Comp
L vs-tipi:TI-99_Sideport J1
U 1 1 5EA54236
P 6000 7100
F 0 "J1" H 5650 8250 60  0000 C CNN
F 1 "TI-99_Sideport" H 6050 5950 60  0000 C CNN
F 2 "peb-edge-card:ti99-exp-edge" H 6000 8400 60  0001 C CNN
F 3 "" H 6000 8400 60  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
Text GLabel 1900 6800 0    60   BiDi ~ 0
TI_MBE
Text GLabel 5250 6850 0    60   BiDi ~ 0
TI_MBE
Text GLabel 5250 7650 0    60   BiDi ~ 0
TI_READY
Text GLabel 1900 7600 0    60   BiDi ~ 0
TI_READY
Text GLabel 1900 8100 0    60   BiDi ~ 0
TI_SBE
Text GLabel 5250 8150 0    60   BiDi ~ 0
TI_SBE
Text GLabel 3400 7500 2    60   BiDi ~ 0
TI_LOAD
Text GLabel 6750 7550 2    60   BiDi ~ 0
TI_LOAD
Text GLabel 6750 8050 2    60   BiDi ~ 0
TI_RESET
Text GLabel 3400 8000 2    60   BiDi ~ 0
TI_RESET
Wire Wire Line
	1900 6800 2050 6800
Wire Wire Line
	1900 7600 2050 7600
Wire Wire Line
	1900 8100 2050 8100
Wire Wire Line
	3250 8000 3400 8000
Wire Wire Line
	3250 7500 3400 7500
Wire Wire Line
	5250 6850 5400 6850
Wire Wire Line
	5250 7650 5400 7650
Wire Wire Line
	5250 8150 5400 8150
Wire Wire Line
	6600 8050 6750 8050
Wire Wire Line
	3250 6000 3400 6000
Wire Wire Line
	6600 6050 6750 6050
Text GLabel 6750 6050 2    60   BiDi ~ 0
TI_-5V
Text GLabel 3400 6000 2    60   BiDi ~ 0
TI_-5V
$Comp
L vs-tipi:Resistor R4
U 1 1 59612E43
P 13950 1150
F 0 "R4" H 13950 1300 50  0000 L CNN
F 1 "10k" V 14000 1100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 13950 1150 50  0001 C CNN
F 3 "" H 13950 1150 50  0001 C CNN
	1    13950 1150
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR020
U 1 1 59613684
P 14300 950
F 0 "#PWR020" H 14300 800 50  0001 C CNN
F 1 "+3.3V" H 14300 1090 50  0000 C CNN
F 2 "" H 14300 950 50  0001 C CNN
F 3 "" H 14300 950 50  0001 C CNN
	1    14300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 7550 6750 7550
NoConn ~ 9000 4050
NoConn ~ 9000 4150
NoConn ~ 9000 4450
NoConn ~ 9000 4550
NoConn ~ 9000 4750
NoConn ~ 9000 5250
NoConn ~ 11400 5450
NoConn ~ 11400 5550
NoConn ~ 11400 4350
NoConn ~ 11400 4550
NoConn ~ 11400 4650
NoConn ~ 11400 4750
NoConn ~ 11400 4850
NoConn ~ 11400 4950
NoConn ~ 11400 5050
NoConn ~ 11400 5650
NoConn ~ 11400 5750
NoConn ~ 11400 5850
NoConn ~ 11400 5950
NoConn ~ 9000 2850
NoConn ~ 9000 2950
NoConn ~ 11400 2150
NoConn ~ 11400 2250
NoConn ~ 11400 2350
NoConn ~ 11400 2450
NoConn ~ 11400 2550
NoConn ~ 11400 2650
NoConn ~ 11400 2750
NoConn ~ 11400 2850
Wire Wire Line
	9800 7350 9750 7350
Wire Wire Line
	9750 7350 9750 7400
Connection ~ 9800 7350
NoConn ~ 11400 3250
Wire Wire Line
	14300 5800 14300 5900
Wire Wire Line
	14900 2700 14900 2750
$Comp
L vs-tipi:Resistor R1
U 1 1 594FDDEA
P 13800 7200
F 0 "R1" V 13880 7200 50  0000 C CNN
F 1 "1k" V 13700 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13730 7200 50  0001 C CNN
F 3 "" H 13800 7200 50  0001 C CNN
	1    13800 7200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 594EB4B3
P 13950 8050
F 0 "#PWR010" H 13950 7900 50  0001 C CNN
F 1 "+5V" H 13950 8190 50  0000 C CNN
F 2 "" H 13950 8050 50  0001 C CNN
F 3 "" H 13950 8050 50  0001 C CNN
	1    13950 8050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 594EB46B
P 13150 8050
F 0 "#PWR09" H 13150 7900 50  0001 C CNN
F 1 "+3.3V" H 13150 8190 50  0000 C CNN
F 2 "" H 13150 8050 50  0001 C CNN
F 3 "" H 13150 8050 50  0001 C CNN
	1    13150 8050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13950 8050 13950 8150
Connection ~ 13950 8150
Wire Wire Line
	13150 8050 13150 8150
Connection ~ 13150 8150
Wire Wire Line
	13950 1250 13950 1800
Wire Wire Line
	14100 1250 14100 1600
Wire Wire Line
	13950 1050 13950 1000
Wire Wire Line
	14300 1000 14300 950 
Wire Wire Line
	14250 1050 14250 1000
Wire Wire Line
	14100 1050 14100 1000
Connection ~ 14100 1000
Wire Wire Line
	14100 1000 14250 1000
Wire Wire Line
	15200 1800 15200 1900
$Comp
L power:+3.3V #PWR04
U 1 1 591AACD3
P 15250 1300
F 0 "#PWR04" H 15250 1150 50  0001 C CNN
F 1 "+3.3V" H 15250 1440 50  0000 C CNN
F 2 "" H 15250 1300 50  0001 C CNN
F 3 "" H 15250 1300 50  0001 C CNN
	1    15250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15250 1500 15250 1300
Wire Wire Line
	14800 1500 15250 1500
Wire Wire Line
	15200 1800 15200 1400
Wire Wire Line
	14800 1400 15200 1400
Connection ~ 15200 1800
Wire Wire Line
	14800 1800 15200 1800
Connection ~ 14250 1000
Wire Wire Line
	14250 1000 14300 1000
Wire Wire Line
	13950 1000 14100 1000
Wire Wire Line
	14250 1250 14250 1400
Wire Wire Line
	13950 1800 14550 1800
Wire Wire Line
	14100 1600 14550 1600
Wire Wire Line
	14250 1400 14550 1400
Wire Wire Line
	13800 1500 14550 1500
Wire Wire Line
	14250 1400 13800 1400
Connection ~ 14250 1400
Wire Wire Line
	14100 1600 13800 1600
Connection ~ 14100 1600
Wire Wire Line
	13950 1800 13800 1800
Connection ~ 13950 1800
$Comp
L power:+5V #PWR05
U 1 1 5F30A586
P 3400 2700
F 0 "#PWR05" H 3400 2550 50  0001 C CNN
F 1 "+5V" H 3400 2840 50  0000 C CNN
F 2 "" H 3400 2700 50  0001 C CNN
F 3 "" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
NoConn ~ 9000 5050
$Comp
L Connector:USB_B_Micro J2
U 1 1 5EC1DD11
P 15150 8200
F 0 "J2" H 15207 8667 50  0000 C CNN
F 1 "USB_B_Micro" H 15207 8576 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 15300 8150 50  0001 C CNN
F 3 "" H 15300 8150 50  0001 C CNN
	1    15150 8200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EC22E1C
P 15150 8750
F 0 "#PWR016" H 15150 8500 50  0001 C CNN
F 1 "GND" H 15150 8600 50  0000 C CNN
F 2 "" H 15150 8750 50  0001 C CNN
F 3 "" H 15150 8750 50  0001 C CNN
	1    15150 8750
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR033
U 1 1 5EC25691
P 14650 7850
F 0 "#PWR033" H 14650 7700 50  0001 C CNN
F 1 "+5V" H 14650 7990 50  0000 C CNN
F 2 "" H 14650 7850 50  0001 C CNN
F 3 "" H 14650 7850 50  0001 C CNN
	1    14650 7850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15250 8600 15250 8700
Wire Wire Line
	15250 8700 15150 8700
Wire Wire Line
	15150 8700 15150 8750
Wire Wire Line
	15150 8700 15150 8600
Connection ~ 15150 8700
Wire Wire Line
	14850 8000 14650 8000
Wire Wire Line
	14650 8000 14650 7850
NoConn ~ 14850 8200
NoConn ~ 14850 8300
NoConn ~ 14850 8400
$Comp
L vs-tipi:Resistor R7
U 1 1 5ECBABA2
P 6800 8450
F 0 "R7" V 6700 8400 50  0000 L CNN
F 1 "DNP" V 6900 8350 50  0000 L CNN
F 2 "VS-TIPI-kicad:C_0805_HandSoldering" H 6800 8450 50  0001 C CNN
F 3 "" H 6800 8450 50  0001 C CNN
	1    6800 8450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 8150 6600 8450
Wire Wire Line
	6600 8450 6700 8450
Wire Wire Line
	6900 8450 7000 8450
Wire Wire Line
	7000 8450 7000 8400
Wire Wire Line
	3250 8100 3300 8100
Wire Wire Line
	3300 8100 3300 8300
Wire Wire Line
	3300 8300 3500 8300
Text Notes 15000 3900 0    60   ~ 0
GPIO_21
Text Notes 15000 3800 0    60   ~ 0
GPIO_20
Text Notes 15000 3700 0    60   ~ 0
GPIO_16
Text Notes 15000 3500 0    60   ~ 0
GPIO_12
Text Notes 13100 3500 0    60   ~ 0
GPIO_6
Text Notes 13100 3600 0    60   ~ 0
GPIO_13
Text Notes 13100 3700 0    60   ~ 0
GPIO_19
Text Notes 13100 3800 0    60   ~ 0
GPIO_26
$Comp
L power:GND #PWR019
U 1 1 59596B4F
P 15200 6000
F 0 "#PWR019" H 15200 5750 50  0001 C CNN
F 1 "GND" H 15200 5850 50  0000 C CNN
F 2 "" H 15200 6000 50  0001 C CNN
F 3 "" H 15200 6000 50  0001 C CNN
	1    15200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 3850 14050 3850
Wire Wire Line
	13900 3950 13900 3850
$Comp
L vs-tipi:CONN_02X05 RPi1
U 1 1 594FFC97
P 14300 3650
F 0 "RPi1" H 14300 3950 50  0000 C CNN
F 1 "RPI_CONN_02X05" H 14300 3350 50  0000 C CNN
F 2 "Connect:IDC_Header_Straight_10pins" H 14300 2450 50  0001 C CNN
F 3 "" H 14300 2450 50  0001 C CNN
	1    14300 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 594FF989
P 14800 3350
F 0 "#PWR013" H 14800 3100 50  0001 C CNN
F 1 "GND" H 14800 3200 50  0000 C CNN
F 2 "" H 14800 3350 50  0001 C CNN
F 3 "" H 14800 3350 50  0001 C CNN
	1    14800 3350
	1    0    0    -1  
$EndComp
Text GLabel 14050 3750 0    60   Input ~ 0
R_RESET
Text GLabel 14550 3850 2    60   Output ~ 0
R_DC
Text GLabel 14050 3550 0    60   Output ~ 0
R_RT
Text GLabel 14550 3750 2    60   Input ~ 0
R_DIN
Text GLabel 14550 3650 2    60   Output ~ 0
R_DOUT
Text GLabel 14050 3450 0    60   Output ~ 0
R_CLK
Text GLabel 14050 3650 0    60   Output ~ 0
R_LE
$Comp
L power:GND #PWR01
U 1 1 5917F66C
P 13900 3950
F 0 "#PWR01" H 13900 3700 50  0001 C CNN
F 1 "GND" H 13900 3800 50  0000 C CNN
F 2 "" H 13900 3950 50  0001 C CNN
F 3 "" H 13900 3950 50  0001 C CNN
	1    13900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR034
U 1 1 5ED6C131
P 15200 5700
F 0 "#PWR034" H 15200 5550 50  0001 C CNN
F 1 "+5V" H 15200 5840 50  0000 C CNN
F 2 "" H 15200 5700 50  0001 C CNN
F 3 "" H 15200 5700 50  0001 C CNN
	1    15200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15200 5700 15200 5750
Text Notes 5400 5800 0    50   ~ 0
Expansion Port in from TI-99/4A
Text Notes 2200 5750 0    50   ~ 0
Expansion Port out to Peripherals
Text Notes 6400 8700 0    50   ~ 0
Connects/Cuts power from TI
Text Notes 1950 1350 0    50   ~ 0
TIPI EPROM
Text Notes 5250 1300 0    50   ~ 0
32K RAM 
Text Notes 9250 1450 0    50   ~ 0
TIPI CPLD
Text Notes 14500 1000 0    50   ~ 0
CPLD Programming Port
Text Notes 13850 2250 0    50   ~ 0
Used to set CRU Base Address
NoConn ~ 14550 3450
Wire Wire Line
	14550 3550 14700 3550
Wire Wire Line
	14700 3550 14700 3350
Wire Wire Line
	14700 3350 14800 3350
Text Notes 14050 3300 0    50   ~ 0
Raspberry Pi Port
Text Notes 13500 4500 0    50   ~ 0
Data Buffer\nBidirectional
$Comp
L vs-tipi:LED D1
U 1 1 594FDAB3
P 14200 6850
F 0 "D1" H 14200 6750 50  0000 C CNN
F 1 "LED" H 14200 6950 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 14200 6850 50  0001 C CNN
F 3 "" H 14200 6850 50  0001 C CNN
	1    14200 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 7200 13700 7200
Wire Wire Line
	14600 2450 14900 2450
Wire Wire Line
	14900 2450 14900 2500
Connection ~ 14600 2450
$EndSCHEMATC
