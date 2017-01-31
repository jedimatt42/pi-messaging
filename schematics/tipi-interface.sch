EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74lvc245
LIBS:tipi-interface-cache
EELAYER 25 0
EELAYER END
$Descr USLedger 17000 11000
encoding utf-8
Sheet 1 1
Title "TI Raspberry PI interface"
Date "2017-01-22"
Rev "4"
Comp "ElectricLab & Jedimatt42"
Comment1 "CRU enable bit w/Jumper Block"
Comment2 "0x5FFF data out, 0x5FFB data in"
Comment3 "0x5FFD control out, 0x5FF9 control in"
Comment4 ""
$EndDescr
Text GLabel 1150 4100 0    60   BiDi ~ 0
D0
Text GLabel 1150 4300 0    60   BiDi ~ 0
D1
Text GLabel 1150 4500 0    60   BiDi ~ 0
D2
Text GLabel 1150 4700 0    60   BiDi ~ 0
D3
Text GLabel 1150 4900 0    60   BiDi ~ 0
D4
Text GLabel 1150 5100 0    60   BiDi ~ 0
D5
Text GLabel 1150 5300 0    60   BiDi ~ 0
D6
Text GLabel 1150 5500 0    60   BiDi ~ 0
D7
Text GLabel 1150 6150 0    60   Input ~ 0
WE*
Text GLabel 1150 6350 0    60   Input ~ 0
MEMEN*
Text GLabel 1150 5850 0    60   Input ~ 0
DBIN
Text GLabel 4550 850  0    60   Input ~ 0
CRUCLK*
Text GLabel 4000 7900 0    60   Input ~ 0
A15
Text GLabel 1150 7150 0    60   Input ~ 0
A14
Text GLabel 1150 7350 0    60   Input ~ 0
A13
Text GLabel 1150 7550 0    60   Input ~ 0
A12
Text GLabel 1150 7750 0    60   Input ~ 0
A11
Text GLabel 1150 7950 0    60   Input ~ 0
A10
Text GLabel 1150 8150 0    60   Input ~ 0
A9
Text GLabel 1150 8350 0    60   Input ~ 0
A8
Text GLabel 1150 8550 0    60   Input ~ 0
A7
Text GLabel 1150 8750 0    60   Input ~ 0
A6
Text GLabel 1150 8950 0    60   Input ~ 0
A5
Text GLabel 1150 9150 0    60   Input ~ 0
A4
Text GLabel 1150 9350 0    60   Input ~ 0
A3
Text GLabel 1150 9550 0    60   Input ~ 0
A2
Text GLabel 1150 9750 0    60   Input ~ 0
A1
Text GLabel 1150 9950 0    60   Input ~ 0
A0
Text GLabel 1150 10150 0    60   Input ~ 0
GND
$Comp
L GND #PWR?
U 1 1 5872D217
P 1300 10150
F 0 "#PWR?" H 1300 9900 50  0001 C CNN
F 1 "GND" H 1300 10000 50  0000 C CNN
F 2 "" H 1300 10150 50  0000 C CNN
F 3 "" H 1300 10150 50  0000 C CNN
	1    1300 10150
	1    0    0    -1  
$EndComp
Entry Wire Line
	1250 4100 1350 4200
Entry Wire Line
	1250 4300 1350 4400
Entry Wire Line
	1250 4500 1350 4600
Entry Wire Line
	1250 4700 1350 4800
Entry Wire Line
	1250 4900 1350 5000
Entry Wire Line
	1250 5100 1350 5200
Entry Wire Line
	1250 5300 1350 5400
Entry Wire Line
	1250 5500 1350 5600
$Comp
L 74HC245 U?
U 1 1 5872D562
P 8950 6950
F 0 "U?" H 9050 7525 50  0000 L BNN
F 1 "74HC245" H 9000 6375 50  0000 L TNN
F 2 "" H 8950 6950 50  0000 C CNN
F 3 "" H 8950 6950 50  0000 C CNN
	1    8950 6950
	1    0    0    -1  
$EndComp
Text GLabel 10000 4300 2    60   Output ~ 0
BCM-14
Text GLabel 10000 4450 2    60   Output ~ 0
BCM-15
Text GLabel 10000 4600 2    60   Output ~ 0
BCM-18
Text GLabel 10000 4750 2    60   Output ~ 0
BCM-23
Text GLabel 10000 4900 2    60   Output ~ 0
BCM-24
Text GLabel 10000 5050 2    60   Output ~ 0
BCM-25
Text GLabel 10000 5200 2    60   Output ~ 0
BCM-8
Text GLabel 10000 5350 2    60   Output ~ 0
BCM-7
$Comp
L 74LS373 U?
U 1 1 5872D8A1
P 5750 4950
F 0 "U?" H 5750 4950 50  0000 C CNN
F 1 "74LS373" H 5800 4600 50  0000 C CNN
F 2 "" H 5750 4950 50  0000 C CNN
F 3 "" H 5750 4950 50  0000 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
Entry Wire Line
	4950 4350 5050 4450
Entry Wire Line
	4950 4450 5050 4550
Entry Wire Line
	4950 4550 5050 4650
Entry Wire Line
	4950 4650 5050 4750
Entry Wire Line
	4950 4750 5050 4850
Entry Wire Line
	4950 4850 5050 4950
Entry Wire Line
	4950 4950 5050 5050
Entry Wire Line
	4950 5050 5050 5150
$Comp
L 74LS21-RESCUE-tipi-interface U?
U 2 1 5872ED3F
P 3350 8200
F 0 "U?" H 3350 8300 50  0000 C CNN
F 1 "74LS21" H 3350 8100 50  0000 C CNN
F 2 "" H 3350 8200 50  0000 C CNN
F 3 "" H 3350 8200 50  0000 C CNN
	2    3350 8200
	1    0    0    -1  
$EndComp
$Comp
L 74LS21-RESCUE-tipi-interface U?
U 1 1 5872EDA9
P 3350 8800
F 0 "U?" H 3350 8900 50  0000 C CNN
F 1 "74LS21" H 3350 8700 50  0000 C CNN
F 2 "" H 3350 8800 50  0000 C CNN
F 3 "" H 3350 8800 50  0000 C CNN
	1    3350 8800
	1    0    0    -1  
$EndComp
$Comp
L 74LS21-RESCUE-tipi-interface U?
U 2 1 5872EDEA
P 3350 9400
F 0 "U?" H 3350 9500 50  0000 C CNN
F 1 "74LS21" H 3350 9300 50  0000 C CNN
F 2 "" H 3350 9400 50  0000 C CNN
F 3 "" H 3350 9400 50  0000 C CNN
	2    3350 9400
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 5872EF6D
P 1800 9950
F 0 "U?" H 1950 10050 50  0000 C CNN
F 1 "74HC04" H 2000 9850 50  0000 C CNN
F 2 "" H 1800 9950 50  0000 C CNN
F 3 "" H 1800 9950 50  0000 C CNN
	1    1800 9950
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 2 1 5872EFE6
P 1800 9550
F 0 "U?" H 1950 9650 50  0000 C CNN
F 1 "74HC04" H 2000 9450 50  0000 C CNN
F 2 "" H 1800 9550 50  0000 C CNN
F 3 "" H 1800 9550 50  0000 C CNN
	2    1800 9550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5872FE8B
P 8100 7250
F 0 "#PWR?" H 8100 7000 50  0001 C CNN
F 1 "GND" H 8100 7100 50  0000 C CNN
F 2 "" H 8100 7250 50  0000 C CNN
F 3 "" H 8100 7250 50  0000 C CNN
	1    8100 7250
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 58730321
P 6750 5400
F 0 "#PWR?" H 6750 5250 50  0001 C CNN
F 1 "+3.3V" H 6750 5540 50  0000 C CNN
F 2 "" H 6750 5400 50  0000 C CNN
F 3 "" H 6750 5400 50  0000 C CNN
	1    6750 5400
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 58730351
P 6950 5350
F 0 "R1" V 7030 5350 50  0000 C CNN
F 1 "1k" V 6950 5350 50  0000 C CNN
F 2 "" V 6880 5350 50  0000 C CNN
F 3 "" H 6950 5350 50  0000 C CNN
	1    6950 5350
	0    1    1    0   
$EndComp
$Comp
L 74LVC245 U?
U 1 1 587BE4F2
P 7800 4950
F 0 "U?" H 7900 5525 50  0000 L BNN
F 1 "74LVC245" H 7850 4375 50  0000 L TNN
F 2 "" H 7800 4950 50  0000 C CNN
F 3 "" H 7800 4950 50  0000 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
Text GLabel 10000 6250 2    60   Input ~ 0
BCM-11
Text GLabel 10000 6400 2    60   Input ~ 0
BCM-0
Text GLabel 10000 6550 2    60   Input ~ 0
BCM-5
Text GLabel 10000 6700 2    60   Input ~ 0
BCM-6
Text GLabel 10000 6850 2    60   Input ~ 0
BCM-13
Text GLabel 10000 7000 2    60   Input ~ 0
BCM-19
Text GLabel 10000 7150 2    60   Input ~ 0
BCM-26
Text GLabel 10000 8200 2    60   Input ~ 0
BCM-16
Entry Wire Line
	8150 6350 8250 6450
Entry Wire Line
	8150 6450 8250 6550
Entry Wire Line
	8150 6550 8250 6650
Entry Wire Line
	8150 6650 8250 6750
Entry Wire Line
	8150 6750 8250 6850
Entry Wire Line
	8150 6850 8250 6950
Entry Wire Line
	8150 6950 8250 7050
Entry Wire Line
	8150 7050 8250 7150
$Comp
L GND #PWR?
U 1 1 587C085B
P 7050 5450
F 0 "#PWR?" H 7050 5200 50  0001 C CNN
F 1 "GND" H 7050 5300 50  0000 C CNN
F 2 "" H 7050 5450 50  0000 C CNN
F 3 "" H 7050 5450 50  0000 C CNN
	1    7050 5450
	1    0    0    -1  
$EndComp
Text GLabel 10000 2600 2    60   Output ~ 0
BCM-2
Text GLabel 10000 2750 2    60   Output ~ 0
BCM-3
Text GLabel 10000 2900 2    60   Output ~ 0
BCM-4
Text GLabel 10000 3050 2    60   Output ~ 0
BCM-17
Text GLabel 10000 3200 2    60   Output ~ 0
BCM-27
Text GLabel 10000 3350 2    60   Output ~ 0
BCM-22
Text GLabel 10000 3500 2    60   Output ~ 0
BCM-10
Text GLabel 10000 3650 2    60   Output ~ 0
BCM-9
$Comp
L 74LS373 U?
U 1 1 587ED5C9
P 5750 3250
F 0 "U?" H 5750 3250 50  0000 C CNN
F 1 "74LS373" H 5800 2900 50  0000 C CNN
F 2 "" H 5750 3250 50  0000 C CNN
F 3 "" H 5750 3250 50  0000 C CNN
	1    5750 3250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 587ED5D7
P 6750 3700
F 0 "#PWR?" H 6750 3550 50  0001 C CNN
F 1 "+3.3V" H 6750 3840 50  0000 C CNN
F 2 "" H 6750 3700 50  0000 C CNN
F 3 "" H 6750 3700 50  0000 C CNN
	1    6750 3700
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 587ED5DD
P 6950 3650
F 0 "R?" V 7030 3650 50  0000 C CNN
F 1 "1k" V 6950 3650 50  0000 C CNN
F 2 "" V 6880 3650 50  0000 C CNN
F 3 "" H 6950 3650 50  0000 C CNN
	1    6950 3650
	0    1    1    0   
$EndComp
$Comp
L 74LVC245 U?
U 1 1 587ED5E6
P 7800 3250
F 0 "U?" H 7900 3825 50  0000 L BNN
F 1 "74LVC245" H 7850 2675 50  0000 L TNN
F 2 "" H 7800 3250 50  0000 C CNN
F 3 "" H 7800 3250 50  0000 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 587ED5EC
P 7050 3750
F 0 "#PWR?" H 7050 3500 50  0001 C CNN
F 1 "GND" H 7050 3600 50  0000 C CNN
F 2 "" H 7050 3750 50  0000 C CNN
F 3 "" H 7050 3750 50  0000 C CNN
	1    7050 3750
	1    0    0    -1  
$EndComp
Entry Wire Line
	4950 2650 5050 2750
Entry Wire Line
	4950 2750 5050 2850
Entry Wire Line
	4950 2850 5050 2950
Entry Wire Line
	4950 2950 5050 3050
Entry Wire Line
	4950 3050 5050 3150
Entry Wire Line
	4950 3150 5050 3250
Entry Wire Line
	4950 3250 5050 3350
Entry Wire Line
	4950 3350 5050 3450
$Comp
L 74LS138 U?
U 1 1 587EDD5F
P 2700 6900
F 0 "U?" H 2800 7400 50  0000 C CNN
F 1 "74LS138" H 2850 6351 50  0000 C CNN
F 2 "" H 2700 6900 50  0000 C CNN
F 3 "" H 2700 6900 50  0000 C CNN
	1    2700 6900
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 587EE35C
P 1600 7550
F 0 "U?" H 1750 7650 50  0000 C CNN
F 1 "74HC04" H 1800 7450 50  0000 C CNN
F 2 "" H 1600 7550 50  0000 C CNN
F 3 "" H 1600 7550 50  0000 C CNN
	1    1600 7550
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 587EE78F
P 4000 5350
F 0 "U?" H 4150 5450 50  0000 C CNN
F 1 "74HC04" H 4200 5250 50  0000 C CNN
F 2 "" H 4000 5350 50  0000 C CNN
F 3 "" H 4000 5350 50  0000 C CNN
	1    4000 5350
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U?
U 1 1 587EE828
P 4000 3650
F 0 "U?" H 4150 3750 50  0000 C CNN
F 1 "74HC04" H 4200 3550 50  0000 C CNN
F 2 "" H 4000 3650 50  0000 C CNN
F 3 "" H 4000 3650 50  0000 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5872DC21
P 5050 5450
F 0 "#PWR?" H 5050 5200 50  0001 C CNN
F 1 "GND" H 5050 5300 50  0000 C CNN
F 2 "" H 5050 5450 50  0000 C CNN
F 3 "" H 5050 5450 50  0000 C CNN
	1    5050 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 587EDA0D
P 5050 3750
F 0 "#PWR?" H 5050 3500 50  0001 C CNN
F 1 "GND" H 5050 3600 50  0000 C CNN
F 2 "" H 5050 3750 50  0000 C CNN
F 3 "" H 5050 3750 50  0000 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
$Comp
L 74LS21-RESCUE-tipi-interface U?
U 1 1 587EEED4
P 4800 8250
F 0 "U?" H 4800 8350 50  0000 C CNN
F 1 "74LS21" H 4800 8150 50  0000 C CNN
F 2 "" H 4800 8250 50  0000 C CNN
F 3 "" H 4800 8250 50  0000 C CNN
	1    4800 8250
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U?
U 1 1 587EF60A
P 8950 8600
F 0 "U?" H 9050 9175 50  0000 L BNN
F 1 "74HC245" H 9000 8025 50  0000 L TNN
F 2 "" H 8950 8600 50  0000 C CNN
F 3 "" H 8950 8600 50  0000 C CNN
	1    8950 8600
	1    0    0    -1  
$EndComp
Text GLabel 10000 7900 2    60   Input ~ 0
BCM-1
Text GLabel 10000 8050 2    60   Input ~ 0
BCM-26
$Comp
L GND #PWR?
U 1 1 587EF78C
P 9750 8500
F 0 "#PWR?" H 9750 8250 50  0001 C CNN
F 1 "GND" H 9750 8350 50  0000 C CNN
F 2 "" H 9750 8500 50  0000 C CNN
F 3 "" H 9750 8500 50  0000 C CNN
	1    9750 8500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 587EF7C4
P 9650 8600
F 0 "#PWR?" H 9650 8350 50  0001 C CNN
F 1 "GND" H 9650 8450 50  0000 C CNN
F 2 "" H 9650 8600 50  0000 C CNN
F 3 "" H 9650 8600 50  0000 C CNN
	1    9650 8600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 587EF7FC
P 9750 8700
F 0 "#PWR?" H 9750 8450 50  0001 C CNN
F 1 "GND" H 9750 8550 50  0000 C CNN
F 2 "" H 9750 8700 50  0000 C CNN
F 3 "" H 9750 8700 50  0000 C CNN
	1    9750 8700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 587EF834
P 9650 8800
F 0 "#PWR?" H 9650 8550 50  0001 C CNN
F 1 "GND" H 9650 8650 50  0000 C CNN
F 2 "" H 9650 8800 50  0000 C CNN
F 3 "" H 9650 8800 50  0000 C CNN
	1    9650 8800
	0    -1   -1   0   
$EndComp
Entry Wire Line
	8150 8000 8250 8100
Entry Wire Line
	8150 8100 8250 8200
Entry Wire Line
	8150 8200 8250 8300
Entry Wire Line
	8150 8300 8250 8400
Entry Wire Line
	8150 8400 8250 8500
Entry Wire Line
	8150 8500 8250 8600
Entry Wire Line
	8150 8600 8250 8700
Entry Wire Line
	8150 8700 8250 8800
$Comp
L GND #PWR?
U 1 1 587EFCE5
P 8100 8900
F 0 "#PWR?" H 8100 8650 50  0001 C CNN
F 1 "GND" H 8100 8750 50  0000 C CNN
F 2 "" H 8100 8900 50  0000 C CNN
F 3 "" H 8100 8900 50  0000 C CNN
	1    8100 8900
	0    1    1    0   
$EndComp
$Comp
L 74LS688 U?
U 1 1 5882E536
P 2800 1600
F 0 "U?" H 2800 2550 50  0000 C CNN
F 1 "74LS688" H 2800 650 50  0000 C CNN
F 2 "" H 2800 1600 50  0000 C CNN
F 3 "" H 2800 1600 50  0000 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5882E667
P 1200 2600
F 0 "#PWR?" H 1200 2450 50  0001 C CNN
F 1 "+5V" H 1200 2740 50  0000 C CNN
F 2 "" H 1200 2600 50  0000 C CNN
F 3 "" H 1200 2600 50  0000 C CNN
	1    1200 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5882E6A1
P 2000 1450
F 0 "#PWR?" H 2000 1200 50  0001 C CNN
F 1 "GND" H 2000 1300 50  0000 C CNN
F 2 "" H 2000 1450 50  0000 C CNN
F 3 "" H 2000 1450 50  0000 C CNN
	1    2000 1450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5882F7F8
P 1350 2150
F 0 "R?" V 1430 2150 50  0000 C CNN
F 1 "1k" V 1350 2150 50  0000 C CNN
F 2 "" V 1280 2150 50  0000 C CNN
F 3 "" H 1350 2150 50  0000 C CNN
	1    1350 2150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5882FA87
P 1400 2300
F 0 "R?" V 1480 2300 50  0000 C CNN
F 1 "1k" V 1400 2300 50  0000 C CNN
F 2 "" V 1330 2300 50  0000 C CNN
F 3 "" H 1400 2300 50  0000 C CNN
	1    1400 2300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5882FAF7
P 1450 2450
F 0 "R?" V 1530 2450 50  0000 C CNN
F 1 "1k" V 1450 2450 50  0000 C CNN
F 2 "" V 1380 2450 50  0000 C CNN
F 3 "" H 1450 2450 50  0000 C CNN
	1    1450 2450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5882FAFD
P 1500 2600
F 0 "R?" V 1580 2600 50  0000 C CNN
F 1 "1k" V 1500 2600 50  0000 C CNN
F 2 "" V 1430 2600 50  0000 C CNN
F 3 "" H 1500 2600 50  0000 C CNN
	1    1500 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5883155D
P 2050 2300
F 0 "#PWR?" H 2050 2050 50  0001 C CNN
F 1 "GND" H 2050 2150 50  0000 C CNN
F 2 "" H 2050 2300 50  0000 C CNN
F 3 "" H 2050 2300 50  0000 C CNN
	1    2050 2300
	0    1    1    0   
$EndComp
$Comp
L 74LS74 U?
U 1 1 5883B572
P 5350 1750
F 0 "U?" H 5500 2050 50  0000 C CNN
F 1 "74LS74" H 5650 1455 50  0000 C CNN
F 2 "" H 5350 1750 50  0000 C CNN
F 3 "" H 5350 1750 50  0000 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 10150 1300 10150
Wire Bus Line
	1350 4050 1350 5600
Wire Wire Line
	1150 4100 1250 4100
Wire Wire Line
	1150 4300 1250 4300
Wire Wire Line
	1150 4500 1250 4500
Wire Wire Line
	1150 4700 1250 4700
Wire Wire Line
	1150 4900 1250 4900
Wire Wire Line
	1150 5100 1250 5100
Wire Wire Line
	1150 5300 1250 5300
Wire Wire Line
	1150 5500 1250 5500
Wire Bus Line
	1350 4050 4950 4050
Wire Bus Line
	4950 4050 4950 5050
Wire Wire Line
	6450 4450 7100 4450
Wire Wire Line
	6450 4550 7100 4550
Wire Wire Line
	6450 4650 7100 4650
Wire Wire Line
	6450 4750 7100 4750
Wire Wire Line
	6450 4850 7100 4850
Wire Wire Line
	6450 4950 7100 4950
Wire Wire Line
	6450 5050 7100 5050
Wire Wire Line
	6450 5150 7100 5150
Wire Wire Line
	1150 9950 1350 9950
Wire Wire Line
	1150 9550 1350 9550
Wire Wire Line
	2250 9950 2750 9950
Wire Wire Line
	2750 9950 2750 9550
Wire Wire Line
	1150 9750 2700 9750
Wire Wire Line
	2700 9750 2700 9450
Wire Wire Line
	2700 9450 2750 9450
Wire Wire Line
	2250 9550 2650 9550
Wire Wire Line
	2650 9550 2650 9350
Wire Wire Line
	2650 9350 2750 9350
Wire Wire Line
	1150 9350 2600 9350
Wire Wire Line
	2600 9350 2600 9250
Wire Wire Line
	2600 9250 2750 9250
Wire Wire Line
	1150 9150 2750 9150
Wire Wire Line
	2750 9150 2750 8950
Wire Wire Line
	1150 8950 2700 8950
Wire Wire Line
	2700 8950 2700 8850
Wire Wire Line
	2700 8850 2750 8850
Wire Wire Line
	1150 8750 2750 8750
Wire Wire Line
	1150 8550 2750 8550
Wire Wire Line
	2750 8550 2750 8650
Wire Wire Line
	1150 8350 2750 8350
Wire Wire Line
	1150 7750 1300 7750
Wire Wire Line
	1300 7750 1300 7900
Wire Wire Line
	1300 7900 2750 7900
Wire Wire Line
	2750 7900 2750 8050
Wire Wire Line
	1150 7950 2700 7950
Wire Wire Line
	2700 7950 2700 8150
Wire Wire Line
	2700 8150 2750 8150
Wire Wire Line
	1150 8150 2650 8150
Wire Wire Line
	2650 8150 2650 8250
Wire Wire Line
	2650 8250 2750 8250
Wire Wire Line
	8250 7350 8250 7250
Wire Wire Line
	8250 7250 8100 7250
Wire Wire Line
	6800 5350 6750 5350
Wire Wire Line
	6750 5350 6750 5400
Wire Wire Line
	7050 5450 7100 5450
Wire Wire Line
	9650 6750 9900 6750
Wire Wire Line
	9900 6750 9900 6700
Wire Wire Line
	9900 6700 10000 6700
Wire Wire Line
	9650 6650 9850 6650
Wire Wire Line
	9850 6650 9850 6550
Wire Wire Line
	9850 6550 10000 6550
Wire Wire Line
	9650 6550 9800 6550
Wire Wire Line
	9800 6550 9800 6400
Wire Wire Line
	9800 6400 10000 6400
Wire Wire Line
	9650 6450 9750 6450
Wire Wire Line
	9750 6450 9750 6250
Wire Wire Line
	9750 6250 10000 6250
Wire Wire Line
	9650 6850 10000 6850
Wire Wire Line
	9650 6950 9900 6950
Wire Wire Line
	9900 6950 9900 7000
Wire Wire Line
	9900 7000 10000 7000
Wire Wire Line
	9650 7050 9850 7050
Wire Wire Line
	9850 7050 9850 7150
Wire Wire Line
	9850 7150 10000 7150
Wire Wire Line
	9650 7150 9800 7150
Wire Wire Line
	9800 7150 9800 7300
Wire Wire Line
	9800 7300 10000 7300
Wire Bus Line
	4650 6250 8150 6250
Wire Bus Line
	4650 6250 4650 5050
Wire Bus Line
	4650 5050 4950 5050
Wire Bus Line
	8150 6250 8150 8700
Wire Wire Line
	6450 2750 7100 2750
Wire Wire Line
	6450 2850 7100 2850
Wire Wire Line
	6450 2950 7100 2950
Wire Wire Line
	6450 3050 7100 3050
Wire Wire Line
	6450 3150 7100 3150
Wire Wire Line
	6450 3250 7100 3250
Wire Wire Line
	6450 3350 7100 3350
Wire Wire Line
	6450 3450 7100 3450
Wire Wire Line
	6800 3650 6750 3650
Wire Wire Line
	6750 3650 6750 3700
Wire Wire Line
	7050 3750 7100 3750
Wire Bus Line
	4950 2650 4950 3350
Wire Bus Line
	4950 2650 4550 2650
Wire Bus Line
	4550 2650 4550 4050
Wire Wire Line
	1150 6350 1650 6350
Wire Wire Line
	1650 6350 1650 7150
Wire Wire Line
	1650 7150 2100 7150
Wire Wire Line
	2050 7250 2050 7550
Wire Wire Line
	1150 6150 2000 6150
Wire Wire Line
	2000 6150 2000 6550
Wire Wire Line
	1150 7150 1550 7150
Wire Wire Line
	1550 7150 1550 6750
Wire Wire Line
	1550 6750 2100 6750
Wire Wire Line
	1150 7350 1350 7350
Wire Wire Line
	1350 7350 1350 6650
Wire Wire Line
	1350 6650 2100 6650
Wire Wire Line
	4450 5350 5050 5350
Wire Wire Line
	4450 3650 5050 3650
Wire Wire Line
	9650 8200 9800 8200
Wire Wire Line
	9800 8200 9800 8050
Wire Wire Line
	9800 8050 10000 8050
Wire Wire Line
	9650 8100 9750 8100
Wire Wire Line
	9750 8100 9750 7900
Wire Wire Line
	9750 7900 10000 7900
Wire Wire Line
	9650 8500 9750 8500
Wire Wire Line
	9650 8700 9750 8700
Wire Wire Line
	8100 8900 8250 8900
Wire Wire Line
	8250 8900 8250 9000
Wire Wire Line
	8500 3050 10000 3050
Wire Wire Line
	8500 3150 9900 3150
Wire Wire Line
	9900 3150 9900 3200
Wire Wire Line
	9900 3200 10000 3200
Wire Wire Line
	8500 3250 9850 3250
Wire Wire Line
	9850 3250 9850 3350
Wire Wire Line
	9850 3350 10000 3350
Wire Wire Line
	8500 3350 9800 3350
Wire Wire Line
	9800 3350 9800 3500
Wire Wire Line
	9800 3500 10000 3500
Wire Wire Line
	8500 3450 9750 3450
Wire Wire Line
	9750 3450 9750 3650
Wire Wire Line
	9750 3650 10000 3650
Wire Wire Line
	8500 2950 9900 2950
Wire Wire Line
	9900 2950 9900 2900
Wire Wire Line
	9900 2900 10000 2900
Wire Wire Line
	8500 2850 9850 2850
Wire Wire Line
	9850 2850 9850 2750
Wire Wire Line
	9850 2750 10000 2750
Wire Wire Line
	8500 2750 9800 2750
Wire Wire Line
	9800 2750 9800 2600
Wire Wire Line
	9800 2600 10000 2600
Wire Wire Line
	8500 4750 10000 4750
Wire Wire Line
	8500 4650 9900 4650
Wire Wire Line
	9900 4650 9900 4600
Wire Wire Line
	9900 4600 10000 4600
Wire Wire Line
	8500 4550 9850 4550
Wire Wire Line
	9850 4550 9850 4450
Wire Wire Line
	9850 4450 10000 4450
Wire Wire Line
	8500 4450 9800 4450
Wire Wire Line
	9800 4450 9800 4300
Wire Wire Line
	9800 4300 10000 4300
Wire Wire Line
	8500 4850 9900 4850
Wire Wire Line
	9900 4850 9900 4900
Wire Wire Line
	9900 4900 10000 4900
Wire Wire Line
	8500 4950 9850 4950
Wire Wire Line
	9850 4950 9850 5050
Wire Wire Line
	9850 5050 10000 5050
Wire Wire Line
	8500 5050 9800 5050
Wire Wire Line
	9800 5050 9800 5200
Wire Wire Line
	9800 5200 10000 5200
Wire Wire Line
	8500 5150 9750 5150
Wire Wire Line
	9750 5150 9750 5350
Wire Wire Line
	9750 5350 10000 5350
Wire Wire Line
	3300 7150 3400 7150
Wire Wire Line
	3400 7150 3400 3650
Wire Wire Line
	3400 3650 3550 3650
Wire Wire Line
	3300 6950 3550 6950
Wire Wire Line
	3550 6950 3550 5350
Wire Wire Line
	3300 6850 7750 6850
Wire Wire Line
	7750 6850 7750 7450
Wire Wire Line
	7750 7450 8250 7450
Wire Wire Line
	3300 6650 7650 6650
Wire Wire Line
	7650 6650 7650 9100
Wire Wire Line
	7650 9100 8250 9100
Wire Wire Line
	1500 1600 2100 1600
Wire Wire Line
	1500 1700 2100 1700
Wire Wire Line
	1500 1800 2100 1800
Wire Wire Line
	1500 1900 2100 1900
Wire Wire Line
	1800 2000 2100 2000
Wire Wire Line
	2050 2100 2050 2450
Wire Wire Line
	2050 2300 2100 2300
Wire Wire Line
	2100 2200 2050 2200
Connection ~ 2050 2200
Wire Wire Line
	2100 2100 2050 2100
Wire Wire Line
	2050 2450 2100 2450
Connection ~ 2050 2300
Wire Wire Line
	1500 1900 1500 2150
Wire Wire Line
	1550 1800 1550 2300
Connection ~ 1550 1800
Wire Wire Line
	1600 1700 1600 2450
Connection ~ 1600 1700
Wire Wire Line
	1650 1600 1650 2600
Connection ~ 1650 1600
Connection ~ 1500 1900
Wire Wire Line
	1200 2450 1300 2450
Connection ~ 1200 2450
Wire Wire Line
	1250 2300 1200 2300
Connection ~ 1200 2300
Wire Wire Line
	1200 2150 1200 2750
Wire Wire Line
	1200 2600 1350 2600
Connection ~ 1200 2600
Wire Wire Line
	1550 1150 2100 1150
Wire Wire Line
	2100 1250 2000 1250
Wire Wire Line
	2000 1450 2100 1450
Connection ~ 2000 1350
Text GLabel 1750 1050 0    60   Input ~ 0
A4
Text GLabel 1550 950  0    60   Input ~ 0
A5
Text GLabel 1750 850  0    60   Input ~ 0
A6
Text GLabel 1550 750  0    60   Input ~ 0
A7
Wire Wire Line
	1750 1050 2100 1050
Wire Wire Line
	1550 950  2100 950 
Wire Wire Line
	1750 850  2100 850 
Wire Wire Line
	1550 750  2100 750 
Text GLabel 4550 1550 0    60   Input ~ 0
A15
$Comp
L 7402 U?
U 1 1 5883C33D
P 3700 1350
F 0 "U?" H 3700 1400 50  0000 C CNN
F 1 "7402" H 3750 1300 50  0000 C CNN
F 2 "" H 3700 1350 50  0000 C CNN
F 3 "" H 3700 1350 50  0000 C CNN
	1    3700 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1950 4750 1950
Wire Wire Line
	4750 1950 4750 1750
Wire Wire Line
	4550 1550 4750 1550
$Comp
L R R?
U 1 1 5883CDDA
P 5200 2400
F 0 "R?" V 5280 2400 50  0000 C CNN
F 1 "1k" V 5200 2400 50  0000 C CNN
F 2 "" V 5130 2400 50  0000 C CNN
F 3 "" H 5200 2400 50  0000 C CNN
	1    5200 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2300 5350 2400
$Comp
L +5V #PWR?
U 1 1 5883CF6D
P 5050 2400
F 0 "#PWR?" H 5050 2250 50  0001 C CNN
F 1 "+5V" H 5050 2540 50  0000 C CNN
F 2 "" H 5050 2400 50  0000 C CNN
F 3 "" H 5050 2400 50  0000 C CNN
	1    5050 2400
	0    -1   -1   0   
$EndComp
Text GLabel 4550 1200 0    60   Input ~ 0
RESET*
Wire Wire Line
	4550 1200 5350 1200
Wire Wire Line
	3500 750  3600 750 
Wire Wire Line
	3800 750  4600 750 
Wire Wire Line
	4600 750  4600 850 
Wire Wire Line
	4600 850  4550 850 
Text GLabel 6100 1550 2    60   Output ~ 0
CRU-BIT1
Wire Wire Line
	5950 1550 6100 1550
Wire Wire Line
	3950 9400 4200 9400
Wire Wire Line
	4200 9400 4200 8400
Wire Wire Line
	3950 8800 3950 8300
Wire Wire Line
	3950 8300 4200 8300
Wire Wire Line
	3950 8200 4200 8200
Wire Wire Line
	4000 7900 4100 7900
Wire Wire Line
	4100 7900 4100 8100
Wire Wire Line
	4100 8100 4200 8100
Text GLabel 4050 7550 0    60   Input ~ 0
CRU-BIT1
$Comp
L 74LS08 U?
U 1 1 5883F1DA
P 4800 7650
F 0 "U?" H 4800 7700 50  0000 C CNN
F 1 "74LS08" H 4800 7600 50  0000 C CNN
F 2 "" H 4800 7650 50  0000 C CNN
F 3 "" H 4800 7650 50  0000 C CNN
	1    4800 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7550 4200 7550
Wire Wire Line
	4200 7750 4200 7950
Wire Wire Line
	4200 7950 5400 7950
Wire Wire Line
	5400 7950 5400 8250
Wire Wire Line
	5400 7650 5400 7400
Wire Wire Line
	5400 7400 3250 7400
Wire Wire Line
	3250 7400 3250 7750
Wire Wire Line
	3250 7750 1950 7750
Wire Wire Line
	1950 7750 1950 7050
Wire Wire Line
	1950 7050 2100 7050
Wire Wire Line
	2050 7250 2100 7250
Wire Wire Line
	2000 6550 2100 6550
$Comp
L R R?
U 1 1 5884EBE6
P 1800 2150
F 0 "R?" V 1880 2150 50  0000 C CNN
F 1 "1k" V 1800 2150 50  0000 C CNN
F 2 "" V 1730 2150 50  0000 C CNN
F 3 "" H 1800 2150 50  0000 C CNN
	1    1800 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 2300 1800 2750
Wire Wire Line
	1800 2750 1200 2750
Wire Wire Line
	2000 1250 2000 1450
Text GLabel 1550 1150 0    60   Input ~ 0
A3
$Comp
L Coded_Switch SW?
U 1 1 5884F44E
P 900 1650
F 0 "SW?" H 1000 2000 50  0000 C CNN
F 1 "Coded_Switch" H 900 1301 50  0000 C CNN
F 2 "" H 900 1650 50  0000 C CNN
F 3 "" H 900 1650 50  0000 C CNN
	1    900  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1350 2100 1350
$Comp
L GND #PWR?
U 1 1 5884F7D2
P 1500 1400
F 0 "#PWR?" H 1500 1150 50  0001 C CNN
F 1 "GND" H 1500 1250 50  0000 C CNN
F 2 "" H 1500 1400 50  0000 C CNN
F 3 "" H 1500 1400 50  0000 C CNN
	1    1500 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 8300 9850 8300
Text GLabel 10000 8350 2    60   Input ~ 0
BCM-20
Wire Wire Line
	9850 8300 9850 8200
Wire Wire Line
	9850 8200 10000 8200
Wire Wire Line
	9650 8400 9900 8400
Wire Wire Line
	9900 8400 9900 8350
Wire Wire Line
	9900 8350 10000 8350
Text GLabel 10000 7300 2    60   Input ~ 0
BCM-21
$Comp
L LED D?
U 1 1 588E625B
P 13900 800
F 0 "D?" H 13900 900 50  0000 C CNN
F 1 "LED" H 13900 700 50  0000 C CNN
F 2 "" H 13900 800 50  0000 C CNN
F 3 "" H 13900 800 50  0000 C CNN
	1    13900 800 
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 588E6302
P 13650 1600
F 0 "Q?" H 13850 1650 50  0000 L CNN
F 1 "Q_NPN_BCE" H 13850 1550 50  0000 L CNN
F 2 "" H 13850 1700 50  0000 C CNN
F 3 "" H 13650 1600 50  0000 C CNN
	1    13650 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588E642B
P 14250 800
F 0 "#PWR?" H 14250 650 50  0001 C CNN
F 1 "+5V" H 14250 940 50  0000 C CNN
F 2 "" H 14250 800 50  0000 C CNN
F 3 "" H 14250 800 50  0000 C CNN
	1    14250 800 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 588E649C
P 13750 1900
F 0 "#PWR?" H 13750 1650 50  0001 C CNN
F 1 "GND" H 13750 1750 50  0000 C CNN
F 2 "" H 13750 1900 50  0000 C CNN
F 3 "" H 13750 1900 50  0000 C CNN
	1    13750 1900
	1    0    0    -1  
$EndComp
Text GLabel 12800 1600 0    60   Input ~ 0
CRU-BIT1
$Comp
L R R?
U 1 1 588E654C
P 13750 1200
F 0 "R?" V 13830 1200 50  0000 C CNN
F 1 "680" V 13750 1200 50  0000 C CNN
F 2 "" V 13680 1200 50  0000 C CNN
F 3 "" H 13750 1200 50  0000 C CNN
	1    13750 1200
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 588E6609
P 13150 1600
F 0 "R?" V 13230 1600 50  0000 C CNN
F 1 "10k" V 13150 1600 50  0000 C CNN
F 2 "" V 13080 1600 50  0000 C CNN
F 3 "" H 13150 1600 50  0000 C CNN
	1    13150 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	12800 1600 13000 1600
Wire Wire Line
	13300 1600 13450 1600
Wire Wire Line
	13750 1800 13750 1900
Wire Wire Line
	13750 1400 13750 1350
Wire Wire Line
	13750 1050 13650 1050
Wire Wire Line
	13650 1050 13650 800 
Wire Wire Line
	13650 800  13750 800 
Wire Wire Line
	14050 800  14250 800 
$EndSCHEMATC
