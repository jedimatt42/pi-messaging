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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SMD TIPI Interface"
Date "2017-01-29"
Rev "1"
Comp ""
Comment1 "Uses Xilinx XC95144XL and 32K DSR eprom"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L XC95144XL-TQ100 U?
U 1 1 588E7E57
P 2600 3600
F 0 "U?" H 1750 6250 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 3300 950 50  0000 C CNN
F 2 "Housings_QFP:TQFP-100_14x14mm_Pitch0.5mm" H 3850 850 50  0001 C CNN
F 3 "" H 2550 3650 50  0000 C CNN
	1    2600 3600
	-1   0    0    1   
$EndComp
$Comp
L 27C256 U?
U 1 1 588E7F2C
P 6450 3700
F 0 "U?" H 6300 4700 50  0000 C CNN
F 1 "27C256" H 6450 2700 50  0000 C CNN
F 2 "" H 6450 3700 50  0000 C CNN
F 3 "" H 6450 3700 50  0000 C CNN
	1    6450 3700
	0    -1   -1   0   
$EndComp
$Comp
L 74LS244 U?
U 1 1 588E803A
P 7900 1750
F 0 "U?" H 7950 1550 50  0000 C CNN
F 1 "74HCT244" H 8000 1350 50  0000 C CNN
F 2 "" H 7900 1750 50  0000 C CNN
F 3 "" H 7900 1750 50  0000 C CNN
	1    7900 1750
	0    -1   -1   0   
$EndComp
$Comp
L 74LS244 U?
U 1 1 588E80E6
P 9300 1750
F 0 "U?" H 9350 1550 50  0000 C CNN
F 1 "74HCT244" H 9400 1350 50  0000 C CNN
F 2 "" H 9300 1750 50  0000 C CNN
F 3 "" H 9300 1750 50  0000 C CNN
	1    9300 1750
	0    -1   -1   0   
$EndComp
$Comp
L 74LS244 U?
U 1 1 588E859F
P 6050 1750
F 0 "U?" H 6100 1550 50  0000 C CNN
F 1 "74HCT244" H 6150 1350 50  0000 C CNN
F 2 "" H 6050 1750 50  0000 C CNN
F 3 "" H 6050 1750 50  0000 C CNN
	1    6050 1750
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E878E
P 1050 7250
F 0 "D?" H 1050 7350 50  0000 C CNN
F 1 "LED" H 1050 7150 50  0000 C CNN
F 2 "" H 1050 7250 50  0000 C CNN
F 3 "" H 1050 7250 50  0000 C CNN
	1    1050 7250
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E888B
P 1400 7250
F 0 "D?" H 1400 7350 50  0000 C CNN
F 1 "LED" H 1400 7150 50  0000 C CNN
F 2 "" H 1400 7250 50  0000 C CNN
F 3 "" H 1400 7250 50  0000 C CNN
	1    1400 7250
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E88BA
P 1750 7250
F 0 "D?" H 1750 7350 50  0000 C CNN
F 1 "LED" H 1750 7150 50  0000 C CNN
F 2 "" H 1750 7250 50  0000 C CNN
F 3 "" H 1750 7250 50  0000 C CNN
	1    1750 7250
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E88F4
P 2100 7250
F 0 "D?" H 2100 7350 50  0000 C CNN
F 1 "LED" H 2100 7150 50  0000 C CNN
F 2 "" H 2100 7250 50  0000 C CNN
F 3 "" H 2100 7250 50  0000 C CNN
	1    2100 7250
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E8925
P 4250 7200
F 0 "D?" H 4250 7300 50  0000 C CNN
F 1 "LED" H 4250 7100 50  0000 C CNN
F 2 "" H 4250 7200 50  0000 C CNN
F 3 "" H 4250 7200 50  0000 C CNN
	1    4250 7200
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E895D
P 4600 7200
F 0 "D?" H 4600 7300 50  0000 C CNN
F 1 "LED" H 4600 7100 50  0000 C CNN
F 2 "" H 4600 7200 50  0000 C CNN
F 3 "" H 4600 7200 50  0000 C CNN
	1    4600 7200
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E8994
P 4950 7200
F 0 "D?" H 4950 7300 50  0000 C CNN
F 1 "LED" H 4950 7100 50  0000 C CNN
F 2 "" H 4950 7200 50  0000 C CNN
F 3 "" H 4950 7200 50  0000 C CNN
	1    4950 7200
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E89CE
P 5300 7200
F 0 "D?" H 5300 7300 50  0000 C CNN
F 1 "LED" H 5300 7100 50  0000 C CNN
F 2 "" H 5300 7200 50  0000 C CNN
F 3 "" H 5300 7200 50  0000 C CNN
	1    5300 7200
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 588E8A0B
P 5900 7200
F 0 "D?" H 5900 7300 50  0000 C CNN
F 1 "LED" H 5900 7100 50  0000 C CNN
F 2 "" H 5900 7200 50  0000 C CNN
F 3 "" H 5900 7200 50  0000 C CNN
	1    5900 7200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 588E8EA9
P 2400 7650
F 0 "#PWR?" H 2400 7400 50  0001 C CNN
F 1 "GND" H 2400 7500 50  0000 C CNN
F 2 "" H 2400 7650 50  0000 C CNN
F 3 "" H 2400 7650 50  0000 C CNN
	1    2400 7650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 588E8EDE
P 5600 7600
F 0 "#PWR?" H 5600 7350 50  0001 C CNN
F 1 "GND" H 5600 7450 50  0000 C CNN
F 2 "" H 5600 7600 50  0000 C CNN
F 3 "" H 5600 7600 50  0000 C CNN
	1    5600 7600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 588E8F13
P 6200 7600
F 0 "#PWR?" H 6200 7350 50  0001 C CNN
F 1 "GND" H 6200 7450 50  0000 C CNN
F 2 "" H 6200 7600 50  0000 C CNN
F 3 "" H 6200 7600 50  0000 C CNN
	1    6200 7600
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 588E8F85
P 6050 7600
F 0 "R?" V 6130 7600 50  0000 C CNN
F 1 "R" V 6050 7600 50  0000 C CNN
F 2 "" V 5980 7600 50  0000 C CNN
F 3 "" H 6050 7600 50  0000 C CNN
	1    6050 7600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 588E9078
P 5450 7600
F 0 "R?" V 5530 7600 50  0000 C CNN
F 1 "R" V 5450 7600 50  0000 C CNN
F 2 "" V 5380 7600 50  0000 C CNN
F 3 "" H 5450 7600 50  0000 C CNN
	1    5450 7600
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 588E913F
P 2250 7650
F 0 "R?" V 2330 7650 50  0000 C CNN
F 1 "R" V 2250 7650 50  0000 C CNN
F 2 "" V 2180 7650 50  0000 C CNN
F 3 "" H 2250 7650 50  0000 C CNN
	1    2250 7650
	0    -1   -1   0   
$EndComp
Entry Wire Line
	9400 800  9500 900 
Entry Wire Line
	9300 800  9400 900 
Entry Wire Line
	9200 800  9300 900 
Entry Wire Line
	9100 800  9200 900 
Entry Wire Line
	9000 800  9100 900 
Entry Wire Line
	8900 800  9000 900 
Entry Wire Line
	8800 800  8900 900 
Entry Wire Line
	8700 800  8800 900 
Entry Wire Line
	8000 800  8100 900 
Entry Wire Line
	7900 800  8000 900 
Entry Wire Line
	7800 800  7900 900 
Entry Wire Line
	7700 800  7800 900 
Entry Wire Line
	7600 800  7700 900 
Entry Wire Line
	7500 800  7600 900 
Entry Wire Line
	7400 800  7500 900 
Entry Wire Line
	7300 800  7400 900 
Entry Wire Line
	6150 800  6250 900 
Entry Wire Line
	6050 800  6150 900 
Entry Wire Line
	5950 800  6050 900 
Entry Wire Line
	5850 800  5950 900 
Entry Wire Line
	5750 800  5850 900 
Entry Wire Line
	5650 800  5750 900 
Entry Wire Line
	5550 800  5650 900 
Entry Wire Line
	5450 800  5550 900 
Text GLabel 1000 1700 0    60   Input ~ 0
A0
Text GLabel 1000 1900 0    60   Input ~ 0
A1
Text GLabel 1000 2100 0    60   Input ~ 0
A2
Text GLabel 1000 2300 0    60   Input ~ 0
A3
Text GLabel 1000 2500 0    60   Input ~ 0
A4
Text GLabel 1000 2800 0    60   Input ~ 0
A5
Text GLabel 1000 3000 0    60   Input ~ 0
A6
Text GLabel 1000 3200 0    60   Input ~ 0
A7
Text GLabel 1000 3400 0    60   Input ~ 0
A8
Text GLabel 1000 3600 0    60   Input ~ 0
A9
Text GLabel 1000 3800 0    60   Input ~ 0
A10
Text GLabel 1000 4000 0    60   Input ~ 0
A11
Text GLabel 1000 4200 0    60   Input ~ 0
A12
Text GLabel 1000 4400 0    60   Input ~ 0
A13
Text GLabel 1000 4600 0    60   Input ~ 0
A14
Text GLabel 1000 4800 0    60   Input ~ 0
A15
Text GLabel 1000 5100 0    60   Input ~ 0
WE*
Text GLabel 1000 5200 0    60   Input ~ 0
MEMEN*
Text GLabel 1000 5300 0    60   Input ~ 0
DBIN
Text GLabel 1000 5400 0    60   Input ~ 0
CRUCLK*
Text GLabel 1000 5500 0    60   Input ~ 0
RESET*
Text GLabel 7400 2600 3    60   Input ~ 0
RD0
Text GLabel 7500 2600 3    60   Input ~ 0
RD1
Text GLabel 7600 2600 3    60   Input ~ 0
RD2
Text GLabel 7700 2600 3    60   Input ~ 0
RD3
Text GLabel 7800 2600 3    60   Input ~ 0
RD4
Text GLabel 7900 2600 3    60   Input ~ 0
RD5
Text GLabel 8000 2600 3    60   Input ~ 0
RD6
Text GLabel 8100 2600 3    60   Input ~ 0
RD7
Text GLabel 8800 2600 3    60   Input ~ 0
RC0
Text GLabel 8900 2600 3    60   Input ~ 0
RC1
Text GLabel 9000 2600 3    60   Input ~ 0
RC2
Text GLabel 9100 2600 3    60   Input ~ 0
RC3
$Comp
L GND #PWR?
U 1 1 588EB945
P 9400 2600
F 0 "#PWR?" H 9400 2350 50  0001 C CNN
F 1 "GND" H 9400 2450 50  0000 C CNN
F 2 "" H 9400 2600 50  0000 C CNN
F 3 "" H 9400 2600 50  0000 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
Text GLabel 4250 1350 2    60   Output ~ 0
TD0
Text GLabel 4250 1500 2    60   Output ~ 0
TD1
Text GLabel 4250 1650 2    60   Output ~ 0
TD2
Text GLabel 4250 1800 2    60   Output ~ 0
TD3
Text GLabel 4250 1950 2    60   Output ~ 0
TD4
Text GLabel 4250 2100 2    60   Output ~ 0
TD5
Text GLabel 4250 2250 2    60   Output ~ 0
TD6
Text GLabel 4250 2400 2    60   Output ~ 0
TD7
Text GLabel 4250 2600 2    60   Output ~ 0
TC0
Text GLabel 4250 2750 2    60   Output ~ 0
TC1
Text GLabel 4250 2900 2    60   Output ~ 0
TC2
Text GLabel 4250 3050 2    60   Output ~ 0
TC3
Text GLabel 4250 3200 2    60   Output ~ 0
TC4
Text GLabel 4250 3350 2    60   Output ~ 0
TC5
Text GLabel 4250 3500 2    60   Output ~ 0
TC6
Text GLabel 4250 3650 2    60   Output ~ 0
TC7
$Comp
L GND #PWR?
U 1 1 588EDD2E
P 3200 650
F 0 "#PWR?" H 3200 400 50  0001 C CNN
F 1 "GND" H 3200 500 50  0000 C CNN
F 2 "" H 3200 650 50  0000 C CNN
F 3 "" H 3200 650 50  0000 C CNN
	1    3200 650 
	0    -1   -1   0   
$EndComp
Text GLabel 6950 4500 3    60   Input ~ 0
A0
Text GLabel 6850 4500 3    60   Input ~ 0
A1
Text GLabel 6750 4500 3    60   Input ~ 0
A2
Text GLabel 6650 4500 3    60   Input ~ 0
A3
Text GLabel 6550 4500 3    60   Input ~ 0
A4
Text GLabel 6450 4500 3    60   Input ~ 0
A5
Text GLabel 6350 4500 3    60   Input ~ 0
A6
Text GLabel 6250 4500 3    60   Input ~ 0
A7
Text GLabel 6150 4500 3    60   Input ~ 0
A8
Text GLabel 6050 4500 3    60   Input ~ 0
A9
Text GLabel 5950 4500 3    60   Input ~ 0
A10
Text GLabel 5850 4500 3    60   Input ~ 0
A11
Text GLabel 5750 4500 3    60   Input ~ 0
A12
$Comp
L GND #PWR?
U 1 1 588EF864
P 7100 4500
F 0 "#PWR?" H 7100 4250 50  0001 C CNN
F 1 "GND" H 7100 4350 50  0000 C CNN
F 2 "" H 7100 4500 50  0000 C CNN
F 3 "" H 7100 4500 50  0000 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Text GLabel 4850 1750 2    60   BiDi ~ 0
D0
Text GLabel 4850 1650 2    60   BiDi ~ 0
D1
Text GLabel 4850 1550 2    60   BiDi ~ 0
D2
Text GLabel 4850 1450 2    60   BiDi ~ 0
D3
Text GLabel 4850 1350 2    60   BiDi ~ 0
D4
Text GLabel 4850 1250 2    60   BiDi ~ 0
D5
Text GLabel 4850 1150 2    60   BiDi ~ 0
D6
Text GLabel 4850 1050 2    60   BiDi ~ 0
D7
Entry Wire Line
	4750 1650 4850 1750
Entry Wire Line
	4750 1550 4850 1650
Entry Wire Line
	4750 1450 4850 1550
Entry Wire Line
	4750 1350 4850 1450
Entry Wire Line
	4750 1250 4850 1350
Entry Wire Line
	4750 1150 4850 1250
Entry Wire Line
	4750 1050 4850 1150
Entry Wire Line
	4750 950  4850 1050
Text GLabel 3950 5800 2    60   BiDi ~ 0
D0
Text GLabel 3950 5700 2    60   BiDi ~ 0
D1
Text GLabel 3950 5600 2    60   BiDi ~ 0
D2
Text GLabel 3950 5500 2    60   BiDi ~ 0
D3
Text GLabel 3950 5400 2    60   BiDi ~ 0
D4
Text GLabel 3950 5300 2    60   BiDi ~ 0
D5
Text GLabel 3950 5200 2    60   BiDi ~ 0
D6
Text GLabel 3950 5100 2    60   BiDi ~ 0
D7
Wire Wire Line
	5900 7350 5900 7600
Wire Wire Line
	5300 7350 5300 7600
Wire Wire Line
	4950 7350 4950 7450
Wire Wire Line
	4250 7450 5300 7450
Connection ~ 5300 7450
Wire Wire Line
	4600 7350 4600 7450
Connection ~ 4950 7450
Wire Wire Line
	4250 7350 4250 7450
Connection ~ 4600 7450
Wire Wire Line
	2100 7400 2100 7650
Wire Wire Line
	1750 7400 1750 7500
Wire Wire Line
	1050 7500 2100 7500
Connection ~ 2100 7500
Wire Wire Line
	1400 7400 1400 7500
Connection ~ 1750 7500
Wire Wire Line
	1050 7400 1050 7500
Connection ~ 1400 7500
Wire Wire Line
	5550 3000 5550 2450
Wire Wire Line
	5650 3000 5650 2450
Wire Wire Line
	5750 2450 5750 3000
Wire Wire Line
	5850 2450 5850 3000
Wire Wire Line
	5950 2450 5950 3000
Wire Wire Line
	6050 2450 6050 3000
Wire Wire Line
	6150 2450 6150 3000
Wire Wire Line
	6250 2450 6250 3000
Wire Bus Line
	4750 800  9400 800 
Wire Wire Line
	5550 900  5550 1050
Wire Wire Line
	5650 900  5650 1050
Wire Wire Line
	5750 900  5750 1050
Wire Wire Line
	5850 900  5850 1050
Wire Wire Line
	5950 900  5950 1050
Wire Wire Line
	6050 900  6050 1050
Wire Wire Line
	6150 900  6150 1050
Wire Wire Line
	6250 900  6250 1050
Wire Wire Line
	7400 900  7400 1050
Wire Wire Line
	7500 900  7500 1050
Wire Wire Line
	7600 900  7600 1050
Wire Wire Line
	7700 900  7700 1050
Wire Wire Line
	7800 900  7800 1050
Wire Wire Line
	7900 900  7900 1050
Wire Wire Line
	8000 900  8000 1050
Wire Wire Line
	8100 900  8100 1050
Wire Wire Line
	8800 900  8800 1050
Wire Wire Line
	8900 900  8900 1050
Wire Wire Line
	9000 900  9000 1050
Wire Wire Line
	9100 900  9100 1050
Wire Wire Line
	9200 900  9200 1050
Wire Wire Line
	9300 900  9300 1050
Wire Wire Line
	9400 900  9400 1050
Wire Wire Line
	9500 900  9500 1050
Wire Wire Line
	7400 2450 7400 2600
Wire Wire Line
	7500 2450 7500 2600
Wire Wire Line
	7600 2450 7600 2600
Wire Wire Line
	7700 2450 7700 2600
Wire Wire Line
	7800 2450 7800 2600
Wire Wire Line
	7900 2450 7900 2600
Wire Wire Line
	8000 2450 8000 2600
Wire Wire Line
	8100 2450 8100 2600
Wire Wire Line
	8800 2450 8800 2600
Wire Wire Line
	8900 2450 8900 2600
Wire Wire Line
	9000 2450 9000 2600
Wire Wire Line
	9100 2450 9100 2600
Wire Wire Line
	9200 2450 9200 2600
Wire Wire Line
	9200 2600 9500 2600
Wire Wire Line
	9500 2600 9500 2450
Wire Wire Line
	9300 2450 9300 2600
Connection ~ 9300 2600
Wire Wire Line
	9400 2450 9400 2600
Connection ~ 9400 2600
Wire Wire Line
	3800 2400 4250 2400
Wire Wire Line
	3800 2300 4200 2300
Wire Wire Line
	4200 2300 4200 2250
Wire Wire Line
	4200 2250 4250 2250
Wire Wire Line
	3800 2200 4150 2200
Wire Wire Line
	4150 2200 4150 2100
Wire Wire Line
	4150 2100 4250 2100
Wire Wire Line
	3800 2100 4100 2100
Wire Wire Line
	4100 2100 4100 1950
Wire Wire Line
	4100 1950 4250 1950
Wire Wire Line
	3800 2000 4050 2000
Wire Wire Line
	4050 2000 4050 1800
Wire Wire Line
	4050 1800 4250 1800
Wire Wire Line
	3800 1900 4000 1900
Wire Wire Line
	4000 1900 4000 1650
Wire Wire Line
	4000 1650 4250 1650
Wire Wire Line
	3800 1800 3950 1800
Wire Wire Line
	3950 1800 3950 1500
Wire Wire Line
	3950 1500 4250 1500
Wire Wire Line
	3800 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1350
Wire Wire Line
	3900 1350 4250 1350
Wire Wire Line
	3800 2500 4200 2500
Wire Wire Line
	4200 2500 4200 2600
Wire Wire Line
	4200 2600 4250 2600
Wire Wire Line
	3800 2600 4150 2600
Wire Wire Line
	4150 2600 4150 2750
Wire Wire Line
	4150 2750 4250 2750
Wire Wire Line
	3800 2800 4200 2800
Wire Wire Line
	4200 2800 4200 2900
Wire Wire Line
	4200 2900 4250 2900
Wire Wire Line
	3800 2900 4150 2900
Wire Wire Line
	4150 2900 4150 3050
Wire Wire Line
	4150 3050 4250 3050
Wire Wire Line
	3800 3000 4100 3000
Wire Wire Line
	4100 3000 4100 3200
Wire Wire Line
	4100 3200 4250 3200
Wire Wire Line
	3800 3100 4050 3100
Wire Wire Line
	4050 3100 4050 3350
Wire Wire Line
	4050 3350 4250 3350
Wire Wire Line
	3800 3200 4000 3200
Wire Wire Line
	4000 3200 4000 3500
Wire Wire Line
	4000 3500 4250 3500
Wire Wire Line
	3800 3300 3950 3300
Wire Wire Line
	3950 3300 3950 3650
Wire Wire Line
	3950 3650 4250 3650
Wire Wire Line
	1000 1700 1400 1700
Wire Wire Line
	1000 1900 1400 1900
Wire Wire Line
	1000 2100 1400 2100
Wire Wire Line
	1000 2300 1400 2300
Wire Wire Line
	1000 2500 1400 2500
Wire Wire Line
	1000 2800 1400 2800
Wire Wire Line
	1000 3000 1400 3000
Wire Wire Line
	1000 3200 1400 3200
Wire Wire Line
	1000 3400 1400 3400
Wire Wire Line
	1000 3600 1400 3600
Wire Wire Line
	1000 3800 1350 3800
Wire Wire Line
	1350 3800 1350 3700
Wire Wire Line
	1350 3700 1400 3700
Wire Wire Line
	1000 4000 1400 4000
Wire Wire Line
	1000 4200 1400 4200
Wire Wire Line
	1000 4400 1400 4400
Wire Wire Line
	1000 4600 1400 4600
Wire Wire Line
	1000 4800 1400 4800
Wire Wire Line
	1000 5100 1400 5100
Wire Wire Line
	1000 5200 1400 5200
Wire Wire Line
	1000 5300 1400 5300
Wire Wire Line
	1000 5400 1400 5400
Wire Wire Line
	1000 5500 1400 5500
Wire Wire Line
	2300 700  2300 650 
Wire Wire Line
	2200 650  3200 650 
Wire Wire Line
	2400 700  2400 650 
Connection ~ 2400 650 
Wire Wire Line
	2500 700  2500 650 
Connection ~ 2500 650 
Wire Wire Line
	2600 700  2600 650 
Connection ~ 2600 650 
Wire Wire Line
	2700 700  2700 650 
Connection ~ 2700 650 
Wire Wire Line
	2800 700  2800 650 
Connection ~ 2800 650 
Wire Wire Line
	2900 700  2900 650 
Connection ~ 2900 650 
Wire Wire Line
	3000 700  3000 650 
Connection ~ 3000 650 
Wire Wire Line
	3800 3900 4950 3900
Wire Wire Line
	4950 3900 4950 4450
Wire Wire Line
	4950 4450 5550 4450
Wire Wire Line
	5550 4450 5550 4400
Wire Wire Line
	5650 4400 5650 4500
Wire Wire Line
	5650 4500 4900 4500
Wire Wire Line
	4900 4500 4900 4000
Wire Wire Line
	4900 4000 3800 4000
Wire Wire Line
	3800 4100 4850 4100
Wire Wire Line
	4850 4100 4850 4750
Wire Wire Line
	4850 4750 7250 4750
Wire Wire Line
	7250 4750 7250 4400
Wire Wire Line
	7250 4450 7550 4450
Wire Wire Line
	7350 4450 7350 4400
Connection ~ 7250 4450
Wire Wire Line
	5750 4400 5750 4500
Wire Wire Line
	5850 4400 5850 4500
Wire Wire Line
	5950 4400 5950 4500
Wire Wire Line
	6050 4400 6050 4500
Wire Wire Line
	6150 4400 6150 4500
Wire Wire Line
	6250 4400 6250 4500
Wire Wire Line
	6350 4400 6350 4500
Wire Wire Line
	6450 4400 6450 4500
Wire Wire Line
	6550 4400 6550 4500
Wire Wire Line
	6650 4400 6650 4500
Wire Wire Line
	6750 4400 6750 4500
Wire Wire Line
	6850 4400 6850 4500
Wire Wire Line
	6950 4400 6950 4500
Wire Wire Line
	7050 4400 7100 4400
Wire Wire Line
	7100 4400 7100 4500
Wire Wire Line
	7550 4450 7550 3150
Wire Wire Line
	7550 3150 6550 3150
Wire Wire Line
	6550 3150 6550 2450
Connection ~ 7350 4450
Wire Wire Line
	6550 2500 6450 2500
Wire Wire Line
	6450 2500 6450 2450
Connection ~ 6550 2500
Wire Wire Line
	3800 4200 5200 4200
Wire Wire Line
	5200 4200 5200 2900
Wire Wire Line
	5200 2900 8300 2900
Wire Wire Line
	8300 2900 8300 2450
Wire Wire Line
	8300 2500 8400 2500
Wire Wire Line
	8400 2500 8400 2450
Connection ~ 8300 2500
Wire Wire Line
	3800 4300 5250 4300
Wire Wire Line
	5250 4300 5250 2950
Wire Wire Line
	5250 2950 9700 2950
Wire Wire Line
	9700 2950 9700 2450
Wire Wire Line
	9700 2500 9800 2500
Wire Wire Line
	9800 2500 9800 2450
Connection ~ 9700 2500
Wire Bus Line
	4750 800  4750 1650
Wire Wire Line
	3800 5100 3950 5100
Wire Wire Line
	3800 5200 3950 5200
Wire Wire Line
	3800 5300 3950 5300
Wire Wire Line
	3800 5400 3950 5400
Wire Wire Line
	3800 5500 3950 5500
Wire Wire Line
	3800 5600 3950 5600
Wire Wire Line
	3800 5700 3950 5700
Wire Wire Line
	3800 5800 3950 5800
Wire Wire Line
	3800 5900 5900 5900
Wire Wire Line
	5900 5900 5900 7050
Wire Wire Line
	3800 6000 5300 6000
Wire Wire Line
	5300 6000 5300 7050
Wire Wire Line
	1400 5900 1300 5900
Wire Wire Line
	1300 5900 1300 6900
Wire Wire Line
	1300 6900 2100 6900
Wire Wire Line
	2100 6900 2100 7100
Wire Wire Line
	1400 5800 1250 5800
Wire Wire Line
	1250 5800 1250 6950
Wire Wire Line
	1250 6950 1750 6950
Wire Wire Line
	1750 6950 1750 7100
Wire Wire Line
	1400 5700 1200 5700
Wire Wire Line
	1200 5700 1200 7000
Wire Wire Line
	1200 7000 1400 7000
Wire Wire Line
	1400 7000 1400 7100
Wire Wire Line
	1400 5600 1050 5600
Wire Wire Line
	1050 5600 1050 7100
Wire Wire Line
	1400 6000 1400 6850
Wire Wire Line
	1400 6850 4250 6850
Wire Wire Line
	4250 6850 4250 7050
Wire Wire Line
	3800 3600 3850 3600
Wire Wire Line
	3850 3600 3850 3850
Wire Wire Line
	3850 3850 4550 3850
Wire Wire Line
	4550 3850 4550 6850
Wire Wire Line
	4550 6850 4600 6850
Wire Wire Line
	4600 6850 4600 7050
Wire Wire Line
	3800 3500 3900 3500
Wire Wire Line
	3900 3500 3900 3750
Wire Wire Line
	3900 3750 4650 3750
Wire Wire Line
	4650 3750 4650 6750
Wire Wire Line
	4650 6750 4950 6750
Wire Wire Line
	4950 6750 4950 7050
$Comp
L AVR-JTAG-10 CONJTAG
U 1 1 588F2F0A
P 1050 900
F 0 "CONJTAG" H 880 1230 50  0000 C CNN
F 1 "JTAG-10" H 900 600 50  0000 L BNN
F 2 "AVR-JTAG-10" V 480 920 50  0001 C CNN
F 3 "" H 1050 900 50  0000 C CNN
	1    1050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 700  2200 700 
Wire Wire Line
	2200 700  2200 650 
Connection ~ 2300 650 
Wire Wire Line
	1100 1100 1200 1100
Wire Wire Line
	1200 1100 1200 700 
Connection ~ 1200 700 
Wire Wire Line
	850  1100 850  1500
Wire Wire Line
	850  1500 1400 1500
Wire Wire Line
	850  900  800  900 
Wire Wire Line
	800  900  800  1400
Wire Wire Line
	800  1400 1400 1400
Wire Wire Line
	850  800  750  800 
Wire Wire Line
	750  800  750  1250
Wire Wire Line
	750  1250 1300 1250
Wire Wire Line
	1300 1250 1300 1200
Wire Wire Line
	1300 1200 1400 1200
Wire Wire Line
	850  700  600  700 
Wire Wire Line
	600  700  600  1300
Wire Wire Line
	600  1300 1400 1300
$Comp
L +5V #PWR?
U 1 1 588F3996
P 1500 800
F 0 "#PWR?" H 1500 650 50  0001 C CNN
F 1 "+5V" H 1500 940 50  0000 C CNN
F 2 "" H 1500 800 50  0000 C CNN
F 3 "" H 1500 800 50  0000 C CNN
	1    1500 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 800  1500 800 
$Comp
L TC1262-33VDB U?
U 1 1 588F3AFE
P 9500 4050
F 0 "U?" H 9500 4375 50  0000 C CNN
F 1 "TC1262-33VDB" H 9500 4300 50  0000 C CNN
F 2 "SOT-223" H 9550 3800 50  0001 L CIN
F 3 "" H 9500 3850 50  0001 C CNN
	1    9500 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 588F3CD7
P 9000 3950
F 0 "#PWR?" H 9000 3800 50  0001 C CNN
F 1 "+5V" H 9000 4090 50  0000 C CNN
F 2 "" H 9000 3950 50  0000 C CNN
F 3 "" H 9000 3950 50  0000 C CNN
	1    9000 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 588F3D11
P 9500 4450
F 0 "#PWR?" H 9500 4200 50  0001 C CNN
F 1 "GND" H 9500 4300 50  0000 C CNN
F 2 "" H 9500 4450 50  0000 C CNN
F 3 "" H 9500 4450 50  0000 C CNN
	1    9500 4450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 588F4114
P 10000 3950
F 0 "#PWR?" H 10000 3800 50  0001 C CNN
F 1 "+3.3V" H 10000 4090 50  0000 C CNN
F 2 "" H 10000 3950 50  0000 C CNN
F 3 "" H 10000 3950 50  0000 C CNN
	1    10000 3950
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 588F415F
P 2650 6550
F 0 "#PWR?" H 2650 6400 50  0001 C CNN
F 1 "+3.3V" H 2650 6690 50  0000 C CNN
F 2 "" H 2650 6550 50  0000 C CNN
F 3 "" H 2650 6550 50  0000 C CNN
	1    2650 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3950 9100 3950
Wire Wire Line
	9900 3950 10000 3950
Wire Wire Line
	9500 4350 9500 4450
$Comp
L C_Small C1
U 1 1 588F4F10
P 9950 4300
F 0 "C1" H 9960 4370 50  0000 L CNN
F 1 "1uf" H 9960 4220 50  0000 L CNN
F 2 "" H 9950 4300 50  0000 C CNN
F 3 "" H 9950 4300 50  0000 C CNN
	1    9950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4400 9950 4400
Connection ~ 9500 4400
Wire Wire Line
	9950 4200 9950 3950
Connection ~ 9950 3950
$Comp
L C_Small C?
U 1 1 588F532B
P 9300 5100
F 0 "C?" H 9310 5170 50  0000 L CNN
F 1 "0.1uf" H 9310 5020 50  0000 L CNN
F 2 "" H 9300 5100 50  0000 C CNN
F 3 "" H 9300 5100 50  0000 C CNN
	1    9300 5100
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 588F6155
P 9300 5400
F 0 "C?" H 9310 5470 50  0000 L CNN
F 1 "0.01uf" H 9310 5320 50  0000 L CNN
F 2 "" H 9300 5400 50  0000 C CNN
F 3 "" H 9300 5400 50  0000 C CNN
	1    9300 5400
	0    1    1    0   
$EndComp
Text Label 8950 5100 2    60   ~ 0
VCCINT
Wire Wire Line
	8950 5100 9200 5100
Wire Wire Line
	9100 5100 9100 5400
Wire Wire Line
	9100 5400 9200 5400
Connection ~ 9100 5100
$Comp
L GND #PWR?
U 1 1 588F6635
P 9650 5100
F 0 "#PWR?" H 9650 4850 50  0001 C CNN
F 1 "GND" H 9650 4950 50  0000 C CNN
F 2 "" H 9650 5100 50  0000 C CNN
F 3 "" H 9650 5100 50  0000 C CNN
	1    9650 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5100 9650 5100
Wire Wire Line
	9400 5400 9500 5400
Wire Wire Line
	9500 5400 9500 5100
Connection ~ 9500 5100
$Comp
L C_Small C?
U 1 1 588F6A67
P 9300 5800
F 0 "C?" H 9310 5870 50  0000 L CNN
F 1 "0.1uf" H 9310 5720 50  0000 L CNN
F 2 "" H 9300 5800 50  0000 C CNN
F 3 "" H 9300 5800 50  0000 C CNN
	1    9300 5800
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 588F6A6D
P 9300 6100
F 0 "C?" H 9310 6170 50  0000 L CNN
F 1 "0.01uf" H 9310 6020 50  0000 L CNN
F 2 "" H 9300 6100 50  0000 C CNN
F 3 "" H 9300 6100 50  0000 C CNN
	1    9300 6100
	0    1    1    0   
$EndComp
Text Label 8950 5800 2    60   ~ 0
VCCIO
Wire Wire Line
	8950 5800 9200 5800
Wire Wire Line
	9100 5800 9100 6100
Wire Wire Line
	9100 6100 9200 6100
Connection ~ 9100 5800
$Comp
L GND #PWR?
U 1 1 588F6A78
P 9650 5800
F 0 "#PWR?" H 9650 5550 50  0001 C CNN
F 1 "GND" H 9650 5650 50  0000 C CNN
F 2 "" H 9650 5800 50  0000 C CNN
F 3 "" H 9650 5800 50  0000 C CNN
	1    9650 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5800 9650 5800
Wire Wire Line
	9400 6100 9500 6100
Wire Wire Line
	9500 6100 9500 5800
Connection ~ 9500 5800
Wire Wire Line
	2200 6500 2200 6550
Wire Wire Line
	2200 6550 3000 6550
Wire Wire Line
	2300 6500 2300 6550
Connection ~ 2300 6550
Wire Wire Line
	2400 6500 2400 6550
Connection ~ 2400 6550
Wire Wire Line
	2500 6500 2500 6550
Connection ~ 2500 6550
Wire Wire Line
	3000 6550 3000 6500
Connection ~ 2650 6550
Wire Wire Line
	2900 6500 2900 6550
Connection ~ 2900 6550
Wire Wire Line
	2800 6500 2800 6550
Connection ~ 2800 6550
$EndSCHEMATC
