EESchema Schematic File Version 5
EELAYER 36 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 1750 2700
Connection ~ 2900 2700
Connection ~ 4450 3650
Connection ~ 4450 3750
Connection ~ 5650 2700
Wire Wire Line
	1250 2700 1050 2700
Wire Wire Line
	1550 2700 1750 2700
Wire Wire Line
	1750 2300 1750 2700
Wire Wire Line
	1750 2700 2100 2700
Wire Wire Line
	2250 2300 1750 2300
Wire Wire Line
	2550 2300 2900 2300
Wire Wire Line
	2700 2700 2900 2700
Wire Wire Line
	2900 2300 2900 2700
Wire Wire Line
	2900 2700 3200 2700
Wire Wire Line
	4450 3650 4450 3750
Wire Wire Line
	4450 3750 4450 3850
Wire Wire Line
	4800 4600 4900 4600
Wire Wire Line
	4900 4900 4800 4900
Wire Wire Line
	5650 2700 5650 2800
Wire Wire Line
	6200 4600 6300 4600
Wire Wire Line
	6200 6650 6200 6750
Wire Wire Line
	6300 4900 6200 4900
Wire Wire Line
	7800 1850 8200 1850
Wire Wire Line
	7800 2850 8200 2850
Wire Wire Line
	8200 1750 7800 1750
Wire Wire Line
	8200 2750 7800 2750
Wire Wire Line
	8200 2950 7800 2950
Wire Wire Line
	9950 3900 10350 3900
Wire Wire Line
	10150 2150 10400 2150
Wire Notes Line
	800  1000 800  6100
Wire Notes Line
	800  6100 3600 6100
Wire Notes Line
	800  6650 800  7650
Wire Notes Line
	800  7650 2400 7650
Wire Notes Line
	2400 6650 800  6650
Wire Notes Line
	2400 7650 2400 6650
Wire Notes Line
	3600 1000 800  1000
Wire Notes Line
	3600 6100 3600 1000
Wire Notes Line
	3950 950  3950 6050
Wire Notes Line
	3950 6050 10900 6050
Wire Notes Line
	3950 6400 3950 7650
Wire Notes Line
	3950 7650 6800 7650
Wire Notes Line
	6800 6400 3950 6400
Wire Notes Line
	6800 7650 6800 6400
Wire Notes Line
	10900 950  3950 950 
Wire Notes Line
	10900 6050 10900 950 
Text Notes 800  850  0    100  ~ 20
Power
Text Notes 800  6550 0    100  ~ 20
Mechanical
Text Notes 1150 5050 0    50   ~ 0
<10mA for control+driver, <10A for target
Text Notes 1700 1750 0    50   ~ 0
Vin(max)=30V\nIout(min)=1mA\nIout(max)=100mA (15mA wrt. thermals)\nP(max) = 350mW\n\nFor Vdrop=20V, I=10mA : P=200mW
Text Notes 3950 900  0    100  ~ 20
Digital
Text Notes 3950 6300 0    100  ~ 20
Output drivers
Text Notes 4000 1100 0    50   ~ 0
IO connector
Text Notes 4000 2450 0    50   ~ 0
I2C
Text Notes 4000 3350 0    50   ~ 0
Rotary encoder
Text Notes 4000 4400 0    50   ~ 0
LEDs
Text Notes 4000 6000 0    50   ~ 0
● AN2860: EMC guidelines for STM8 microcontrollers\n● AN2752: Getting started with the STM8S and STM8AF\n● AN3181: Guidelines for obtaining IEC60335 Class B certification on STM8 family\n● RM0016: STM8S and STM8A microcontroller families reference manual\n● RM0031: STM8L05xx, STM8L15xx, STM8L162x, STM8AL31xx and STM8AL3Lxx\nmicrocontroller family reference manual.
Text Notes 5500 2000 0    50   ~ 0
INT is I2C interrupt for\nslaves to callback on.\ne.g. on user input / boot.
Text Notes 8350 5950 0    50   ~ 0
MCU:\n - Table 21: 5mA @ 16MHz / 1mA @ 2MHz / <1mA @ 128kHz\n - Peripherals approx 1mA extra.\nGPIO: 1mA max loading, per 4.7kΩ pullup\n\nInternal pullups 30-80kΩ (§9.3.6).\n\nTotal demand should be around 5-7mA on the 5V rail.\n\nLEDs drive from main voltage to avoid loading LDO,\nso they won't work if 5V line is powered directly (with no VIN).
Text Notes 8750 3400 2    50   ~ 0
AN2860 p10f3
Text Notes 10200 2950 0    50   ~ 0
"470..3300nF"\nESR <300mΩ\nESL <15nH
Text Label 4600 2700 0    50   ~ 0
INT_PIN
Text Label 6200 6650 2    50   ~ 0
VIN
Text Label 7800 1750 0    50   ~ 0
SCL_PIN
Text Label 7800 1850 0    50   ~ 0
SDA_PIN
Text Label 7800 2750 0    50   ~ 0
INT_PIN
Text Label 7800 2850 0    50   ~ 0
UTX_PIN
Text Label 7800 2950 0    50   ~ 0
URX_PIN
Text Label 10300 1450 0    50   ~ 0
VCAP
Text Label 10300 3500 0    50   ~ 0
NRST_PIN
Text Label 10350 3900 2    50   ~ 0
NRST_PIN
Text Label 10400 2150 2    50   ~ 0
VCAP
Text GLabel 1050 2700 0    50   Input ~ 0
VIN
Text GLabel 1400 4600 2    50   Input ~ 0
VIN
Text GLabel 1750 2300 0    50   Input ~ 0
VIN_D
Text GLabel 3000 4600 3    50   Input ~ 0
VIN
Text GLabel 3250 4600 3    50   Input ~ 0
VIN_D
Text GLabel 4250 4600 0    50   Input ~ 0
VIN_D
Text GLabel 4250 4700 0    50   Input ~ 0
LED1
Text GLabel 4350 6750 0    50   Input ~ 0
PWM1
Text GLabel 4350 7300 0    50   Input ~ 0
PWM2
Text GLabel 4500 1350 0    50   Input ~ 0
URX
Text GLabel 4500 1450 0    50   Input ~ 0
UTX
Text GLabel 4500 1550 0    50   Input ~ 0
SADD0
Text GLabel 4500 1650 0    50   Input ~ 0
SADD1
Text GLabel 4500 1750 0    50   Input ~ 0
SADD2
Text GLabel 4500 1950 0    50   Input ~ 0
INT
Text GLabel 4500 2050 0    50   Input ~ 0
SCL
Text GLabel 4500 2150 0    50   Input ~ 0
SDA
Text GLabel 4750 3650 2    50   Input ~ 0
RE_I
Text GLabel 4750 3750 2    50   Input ~ 0
RE_Q
Text GLabel 4750 3850 2    50   Input ~ 0
RE_B
Text GLabel 5000 1350 2    50   Input ~ 0
SWIM
Text GLabel 5000 1450 2    50   Input ~ 0
NRST
Text GLabel 5000 1950 2    50   Input ~ 0
INT
Text GLabel 5000 2050 2    50   Input ~ 0
SCL
Text GLabel 5000 2150 2    50   Input ~ 0
SDA
Text GLabel 5200 6650 2    50   Input ~ 0
DRAIN1
Text GLabel 5200 7200 2    50   Input ~ 0
DRAIN2
Text GLabel 5600 3700 0    50   Input ~ 0
RE_I
Text GLabel 5600 3900 0    50   Input ~ 0
RE_Q
Text GLabel 5650 4600 0    50   Input ~ 0
VIN_D
Text GLabel 5650 4700 0    50   Input ~ 0
LED2
Text GLabel 5950 2700 2    50   Input ~ 0
SCL
Text GLabel 5950 2800 2    50   Input ~ 0
SDA
Text GLabel 6200 7250 0    50   Input ~ 0
DRAIN1
Text GLabel 6200 7350 0    50   Input ~ 0
DRAIN2
Text GLabel 6800 3700 2    50   Input ~ 0
RE_B
Text GLabel 7800 1450 2    50   Input ~ 0
LED1
Text GLabel 7800 1550 2    50   Input ~ 0
LED2
Text GLabel 7800 1650 2    50   Input ~ 0
PWM1
Text GLabel 7800 1950 2    50   Input ~ 0
RE_B
Text GLabel 7800 2050 2    50   Input ~ 0
RE_Q
Text GLabel 7800 2150 2    50   Input ~ 0
RE_I
Text GLabel 7800 2250 2    50   Input ~ 0
SADD2
Text GLabel 7800 2350 2    50   Input ~ 0
SADD1
Text GLabel 7800 2450 2    50   Input ~ 0
SWIM
Text GLabel 7800 2550 2    50   Input ~ 0
SADD0
Text GLabel 7800 2650 2    50   Input ~ 0
PWM2
Text GLabel 8500 1750 2    50   Input ~ 0
SCL
Text GLabel 8500 1850 2    50   Input ~ 0
SDA
Text GLabel 8500 2750 2    50   Input ~ 0
INT
Text GLabel 8500 2850 2    50   Input ~ 0
UTX
Text GLabel 8500 2950 2    50   Input ~ 0
URX
Text GLabel 9650 3900 0    50   Input ~ 0
NRST
$Comp
L power:+5V #PWR021
U 1 1 6222B7D6
P 2300 4550
F 0 "#PWR021" H 2300 4400 50  0001 C CNN
F 1 "+5V" H 2315 4723 50  0000 C CNN
F 2 "" H 2300 4550 50  0001 C CNN
F 3 "" H 2300 4550 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 61CB0C45
P 3200 2700
F 0 "#PWR011" H 3200 2550 50  0001 C CNN
F 1 "+5V" V 3215 2828 50  0000 L CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 61CB9711
P 4350 6650
F 0 "#PWR024" H 4350 6500 50  0001 C CNN
F 1 "+5V" V 4365 6778 50  0000 L CNN
F 2 "" H 4350 6650 50  0001 C CNN
F 3 "" H 4350 6650 50  0001 C CNN
	1    4350 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 61CB9CF3
P 4350 7200
F 0 "#PWR025" H 4350 7050 50  0001 C CNN
F 1 "+5V" V 4365 7328 50  0000 L CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 61CB57CD
P 5650 2700
F 0 "#PWR013" H 5650 2550 50  0001 C CNN
F 1 "+5V" V 5665 2828 50  0000 L CNN
F 2 "" H 5650 2700 50  0001 C CNN
F 3 "" H 5650 2700 50  0001 C CNN
	1    5650 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 61CBDD17
P 9350 2150
F 0 "#PWR010" H 9350 2000 50  0001 C CNN
F 1 "+5V" H 9365 2323 50  0000 C CNN
F 2 "" H 9350 2150 50  0001 C CNN
F 3 "" H 9350 2150 50  0001 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 61CB7FC5
P 10300 1550
F 0 "#PWR03" H 10300 1400 50  0001 C CNN
F 1 "+5V" V 10315 1678 50  0000 L CNN
F 2 "" H 10300 1550 50  0001 C CNN
F 3 "" H 10300 1550 50  0001 C CNN
	1    10300 1550
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61BC6801
P 2750 4600
F 0 "#FLG02" H 2750 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 4773 50  0001 C CNN
F 2 "" H 2750 4600 50  0001 C CNN
F 3 "~" H 2750 4600 50  0001 C CNN
	1    2750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61BBB3BC
P 3000 4600
F 0 "#FLG03" H 3000 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 4773 50  0001 C CNN
F 2 "" H 3000 4600 50  0001 C CNN
F 3 "~" H 3000 4600 50  0001 C CNN
	1    3000 4600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 61FF537A
P 3250 4600
F 0 "#FLG04" H 3250 4675 50  0001 C CNN
F 1 "PWR_FLAG" H 3250 4773 50  0001 C CNN
F 2 "" H 3250 4600 50  0001 C CNN
F 3 "~" H 3250 4600 50  0001 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61BF8259
P 10300 1450
F 0 "#FLG01" H 10300 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 1623 50  0001 C CNN
F 2 "" H 10300 1450 50  0001 C CNN
F 3 "~" H 10300 1450 50  0001 C CNN
	1    10300 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 6222D05A
P 2300 4550
F 0 "TP1" H 2358 4576 50  0000 L CNN
F 1 "5V" H 2358 4667 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 2500 4550 50  0001 C CNN
F 3 "~" H 2500 4550 50  0001 C CNN
F 4 "-" H 2300 4550 50  0001 C CNN "JLC"
	1    2300 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61D4A984
P 1400 4700
AR Path="/61D4A984" Ref="#PWR023"  Part="1" 
AR Path="/61B5C5B6/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D4A984" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 1400 4450 50  0001 C CNN
F 1 "GND" H 1405 4527 50  0000 C CNN
F 2 "" H 1400 4700 50  0001 C CNN
F 3 "" H 1400 4700 50  0001 C CNN
	1    1400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 61BCD9E0
P 1750 3000
F 0 "#PWR014" H 1750 2750 50  0001 C CNN
F 1 "GND" H 1755 2827 50  0000 C CNN
F 2 "" H 1750 3000 50  0001 C CNN
F 3 "" H 1750 3000 50  0001 C CNN
	1    1750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 61BB5A25
P 2400 3000
F 0 "#PWR015" H 2400 2750 50  0001 C CNN
F 1 "GND" H 2405 2827 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61BC6CF2
P 2750 4600
F 0 "#PWR022" H 2750 4350 50  0001 C CNN
F 1 "GND" H 2755 4427 50  0000 C CNN
F 2 "" H 2750 4600 50  0001 C CNN
F 3 "" H 2750 4600 50  0001 C CNN
	1    2750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 61BC89E8
P 2900 3000
F 0 "#PWR016" H 2900 2750 50  0001 C CNN
F 1 "GND" H 2905 2827 50  0000 C CNN
F 2 "" H 2900 3000 50  0001 C CNN
F 3 "" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61F9C39A
P 4300 2700
AR Path="/61B5C5B6/61F9C39A" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61F9C39A" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61F9C39A" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61F9C39A" Ref="#PWR?"  Part="1" 
AR Path="/61F9C39A" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4300 2450 50  0001 C CNN
F 1 "GND" V 4305 2572 50  0000 R CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62236DA6
P 4450 3650
AR Path="/61B5C5B6/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/62236DA6" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 4450 3400 50  0001 C CNN
F 1 "GND" V 4455 3522 50  0000 R CNN
F 2 "" H 4450 3650 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621839EC
P 4500 1850
AR Path="/61B5C5B6/621839EC" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621839EC" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621839EC" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621839EC" Ref="#PWR?"  Part="1" 
AR Path="/621839EC" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4500 1600 50  0001 C CNN
F 1 "GND" V 4505 1722 50  0000 R CNN
F 2 "" H 4500 1850 50  0001 C CNN
F 3 "" H 4500 1850 50  0001 C CNN
	1    4500 1850
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2B61F
P 5000 1550
AR Path="/61B5C5B6/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C2B61F" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 5000 1300 50  0001 C CNN
F 1 "GND" V 5005 1422 50  0000 R CNN
F 2 "" H 5000 1550 50  0001 C CNN
F 3 "" H 5000 1550 50  0001 C CNN
	1    5000 1550
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2A7C7
P 5000 1650
AR Path="/61B5C5B6/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C2A7C7" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 5000 1400 50  0001 C CNN
F 1 "GND" V 5005 1522 50  0000 R CNN
F 2 "" H 5000 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0001 C CNN
	1    5000 1650
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C29892
P 5000 1750
AR Path="/61B5C5B6/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C29892" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5000 1500 50  0001 C CNN
F 1 "GND" V 5005 1622 50  0000 R CNN
F 2 "" H 5000 1750 50  0001 C CNN
F 3 "" H 5000 1750 50  0001 C CNN
	1    5000 1750
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6218351B
P 5000 1850
AR Path="/61B5C5B6/6218351B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6218351B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6218351B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6218351B" Ref="#PWR?"  Part="1" 
AR Path="/6218351B" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5000 1600 50  0001 C CNN
F 1 "GND" V 5005 1722 50  0000 R CNN
F 2 "" H 5000 1850 50  0001 C CNN
F 3 "" H 5000 1850 50  0001 C CNN
	1    5000 1850
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0F07F
P 5900 3800
AR Path="/61B5C5B6/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C0F07F" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 5900 3550 50  0001 C CNN
F 1 "GND" V 5905 3672 50  0000 R CNN
F 2 "" H 5900 3800 50  0001 C CNN
F 3 "" H 5900 3800 50  0001 C CNN
	1    5900 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0F561
P 6500 3900
AR Path="/61B5C5B6/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C0F561" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6500 3650 50  0001 C CNN
F 1 "GND" V 6505 3772 50  0000 R CNN
F 2 "" H 6500 3900 50  0001 C CNN
F 3 "" H 6500 3900 50  0001 C CNN
	1    6500 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC73E0
P 9350 2450
AR Path="/61B5C5B6/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61BC73E0" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 9350 2200 50  0001 C CNN
F 1 "GND" H 9355 2277 50  0000 C CNN
F 2 "" H 9350 2450 50  0001 C CNN
F 3 "" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61D28037
P 10150 2450
AR Path="/61B5C5B6/61D28037" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D28037" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D28037" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D28037" Ref="#PWR?"  Part="1" 
AR Path="/61D28037" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 10150 2200 50  0001 C CNN
F 1 "GND" H 10155 2277 50  0000 C CNN
F 2 "" H 10150 2450 50  0001 C CNN
F 3 "" H 10150 2450 50  0001 C CNN
	1    10150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC6B78
P 10300 1650
AR Path="/61B5C5B6/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61BC6B78" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 10300 1400 50  0001 C CNN
F 1 "GND" V 10305 1522 50  0000 R CNN
F 2 "" H 10300 1650 50  0001 C CNN
F 3 "" H 10300 1650 50  0001 C CNN
	1    10300 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BAA67D
P 10350 4200
AR Path="/61B5C5B6/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61BAA67D" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 10350 3950 50  0001 C CNN
F 1 "GND" H 10355 4027 50  0000 C CNN
F 2 "" H 10350 4200 50  0001 C CNN
F 3 "" H 10350 4200 50  0001 C CNN
	1    10350 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC4F56
P 10400 2450
AR Path="/61B5C5B6/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61BC4F56" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 10400 2200 50  0001 C CNN
F 1 "GND" H 10405 2277 50  0000 C CNN
F 2 "" H 10400 2450 50  0001 C CNN
F 3 "" H 10400 2450 50  0001 C CNN
	1    10400 2450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61E6FE9D
P 1000 6850
F 0 "H1" H 1100 6896 50  0000 L CNN
F 1 "JLC" H 1100 6805 50  0000 L CNN
F 2 "mark:JLCPCB_ToolingHole_1152_1300_1400_1650" H 1000 6850 50  0001 C CNN
F 3 "~" H 1000 6850 50  0001 C CNN
F 4 "-" H 1000 6850 50  0001 C CNN "JLC"
	1    1000 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61E7024D
P 1000 7050
F 0 "H4" H 1100 7096 50  0000 L CNN
F 1 "JLC" H 1100 7005 50  0000 L CNN
F 2 "mark:JLCPCB_ToolingHole_1152_1300_1400_1650" H 1000 7050 50  0001 C CNN
F 3 "~" H 1000 7050 50  0001 C CNN
F 4 "-" H 1000 7050 50  0001 C CNN "JLC"
	1    1000 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61E71653
P 1500 6850
F 0 "H2" H 1600 6896 50  0000 L CNN
F 1 "M2" H 1600 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1500 6850 50  0001 C CNN
F 3 "~" H 1500 6850 50  0001 C CNN
F 4 "-" H 1500 6850 50  0001 C CNN "JLC"
	1    1500 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 61E7197C
P 1500 7050
F 0 "H5" H 1600 7096 50  0000 L CNN
F 1 "M2" H 1600 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1500 7050 50  0001 C CNN
F 3 "~" H 1500 7050 50  0001 C CNN
F 4 "-" H 1500 7050 50  0001 C CNN "JLC"
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 61F562CE
P 1500 7250
F 0 "H7" H 1600 7296 50  0000 L CNN
F 1 "M2" H 1600 7205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1500 7250 50  0001 C CNN
F 3 "~" H 1500 7250 50  0001 C CNN
F 4 "-" H 1500 7250 50  0001 C CNN "JLC"
	1    1500 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61FA948B
P 2000 6850
F 0 "H3" H 2100 6896 50  0000 L CNN
F 1 "M2" H 2100 6805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 2000 6850 50  0001 C CNN
F 3 "~" H 2000 6850 50  0001 C CNN
F 4 "-" H 2000 6850 50  0001 C CNN "JLC"
	1    2000 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 61FA9492
P 2000 7050
F 0 "H6" H 2100 7096 50  0000 L CNN
F 1 "M2" H 2100 7005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2mm" H 2000 7050 50  0001 C CNN
F 3 "~" H 2000 7050 50  0001 C CNN
F 4 "-" H 2000 7050 50  0001 C CNN "JLC"
	1    2000 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole G1
U 1 1 6246AF29
P 3100 7050
F 0 "G1" H 3200 7096 50  0000 L CNN
F 1 "Roger" H 3200 7005 50  0000 L CNN
F 2 "pwm-controller:roger" H 3100 7050 50  0001 C CNN
F 3 "~" H 3100 7050 50  0001 C CNN
F 4 "-" H 3100 7050 50  0001 C CNN "JLC"
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61CD939B
P 5750 3700
AR Path="/61B5C5B6/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C03040/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CD939B" Ref="R?"  Part="1" 
AR Path="/61CD939B" Ref="R8"  Part="1" 
F 0 "R8" V 5543 3700 50  0000 C CNN
F 1 "100" V 5634 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5680 3700 50  0001 C CNN
F 3 "~" H 5750 3700 50  0001 C CNN
F 4 "C25076" H 5750 3700 50  0001 C CNN "JLC"
	1    5750 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CD98C2
P 5750 3900
AR Path="/61B5C5B6/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C03040/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61CD98C2" Ref="R10"  Part="1" 
F 0 "R10" V 5865 3900 50  0000 C CNN
F 1 "100" V 5956 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5680 3900 50  0001 C CNN
F 3 "~" H 5750 3900 50  0001 C CNN
F 4 "C25076" H 5750 3900 50  0001 C CNN "JLC"
	1    5750 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61BB99F2
P 5800 2700
AR Path="/61B5C5B6/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C03040/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61BB99F2" Ref="R3"  Part="1" 
F 0 "R3" V 5593 2700 50  0000 C CNN
F 1 "4.7k" V 5684 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5730 2700 50  0001 C CNN
F 3 "~" H 5800 2700 50  0001 C CNN
F 4 "C25900" H 5800 2700 50  0001 C CNN "JLC"
	1    5800 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61BB9F0D
P 5800 2800
AR Path="/61B5C5B6/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C03040/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C031A1/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C031A3/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61BB9F0D" Ref="R5"  Part="1" 
F 0 "R5" V 5915 2800 50  0000 C CNN
F 1 "4.7k" V 6006 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5730 2800 50  0001 C CNN
F 3 "~" H 5800 2800 50  0001 C CNN
F 4 "C25900" H 5800 2800 50  0001 C CNN "JLC"
	1    5800 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CDA382
P 6650 3700
AR Path="/61B5C5B6/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C03040/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CDA382" Ref="R?"  Part="1" 
AR Path="/61CDA382" Ref="R9"  Part="1" 
F 0 "R9" V 6443 3700 50  0000 C CNN
F 1 "100" V 6534 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6580 3700 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
F 4 "C25076" H 6650 3700 50  0001 C CNN "JLC"
	1    6650 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61DB4527
P 8350 1750
AR Path="/61B5C5B6/61DB4527" Ref="R?"  Part="1" 
AR Path="/61C03040/61DB4527" Ref="R?"  Part="1" 
AR Path="/61C031A1/61DB4527" Ref="R?"  Part="1" 
AR Path="/61C031A3/61DB4527" Ref="R?"  Part="1" 
AR Path="/61DB4527" Ref="R1"  Part="1" 
F 0 "R1" V 8143 1750 50  0000 C CNN
F 1 "100" V 8234 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8280 1750 50  0001 C CNN
F 3 "~" H 8350 1750 50  0001 C CNN
F 4 "C25076" H 8350 1750 50  0001 C CNN "JLC"
	1    8350 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61DB5806
P 8350 1850
AR Path="/61B5C5B6/61DB5806" Ref="R?"  Part="1" 
AR Path="/61C03040/61DB5806" Ref="R?"  Part="1" 
AR Path="/61C031A1/61DB5806" Ref="R?"  Part="1" 
AR Path="/61C031A3/61DB5806" Ref="R?"  Part="1" 
AR Path="/61DB5806" Ref="R2"  Part="1" 
F 0 "R2" V 8465 1850 50  0000 C CNN
F 1 "100" V 8556 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8280 1850 50  0001 C CNN
F 3 "~" H 8350 1850 50  0001 C CNN
F 4 "C25076" H 8350 1850 50  0001 C CNN "JLC"
	1    8350 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62317A5E
P 8350 2750
AR Path="/61B5C5B6/62317A5E" Ref="R?"  Part="1" 
AR Path="/61C03040/62317A5E" Ref="R?"  Part="1" 
AR Path="/61C031A1/62317A5E" Ref="R?"  Part="1" 
AR Path="/61C031A3/62317A5E" Ref="R?"  Part="1" 
AR Path="/62317A5E" Ref="R4"  Part="1" 
F 0 "R4" V 8143 2750 50  0000 C CNN
F 1 "100" V 8234 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8280 2750 50  0001 C CNN
F 3 "~" H 8350 2750 50  0001 C CNN
F 4 "C25076" H 8350 2750 50  0001 C CNN "JLC"
	1    8350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 623F661A
P 8350 2850
AR Path="/61B5C5B6/623F661A" Ref="R?"  Part="1" 
AR Path="/61C03040/623F661A" Ref="R?"  Part="1" 
AR Path="/61C031A1/623F661A" Ref="R?"  Part="1" 
AR Path="/61C031A3/623F661A" Ref="R?"  Part="1" 
AR Path="/623F661A" Ref="R6"  Part="1" 
F 0 "R6" V 8143 2850 50  0000 C CNN
F 1 "100" V 8234 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8280 2850 50  0001 C CNN
F 3 "~" H 8350 2850 50  0001 C CNN
F 4 "C25076" H 8350 2850 50  0001 C CNN "JLC"
	1    8350 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 623F6E05
P 8350 2950
AR Path="/61B5C5B6/623F6E05" Ref="R?"  Part="1" 
AR Path="/61C03040/623F6E05" Ref="R?"  Part="1" 
AR Path="/61C031A1/623F6E05" Ref="R?"  Part="1" 
AR Path="/61C031A3/623F6E05" Ref="R?"  Part="1" 
AR Path="/623F6E05" Ref="R7"  Part="1" 
F 0 "R7" V 8143 2950 50  0000 C CNN
F 1 "100" V 8234 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8280 2950 50  0001 C CNN
F 3 "~" H 8350 2950 50  0001 C CNN
F 4 "C25076" H 8350 2950 50  0001 C CNN "JLC"
	1    8350 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 624ADDD2
P 9800 3900
AR Path="/61B5C5B6/624ADDD2" Ref="R?"  Part="1" 
AR Path="/61C03040/624ADDD2" Ref="R?"  Part="1" 
AR Path="/61C031A1/624ADDD2" Ref="R?"  Part="1" 
AR Path="/61C031A3/624ADDD2" Ref="R?"  Part="1" 
AR Path="/624ADDD2" Ref="R21"  Part="1" 
F 0 "R21" V 9593 3900 50  0000 C CNN
F 1 "100" V 9684 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9730 3900 50  0001 C CNN
F 3 "~" H 9800 3900 50  0001 C CNN
F 4 "C25076" H 9800 3900 50  0001 C CNN "JLC"
	1    9800 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 61FE2924
P 1400 2700
F 0 "D2" H 1400 2483 50  0000 C CNN
F 1 "B5819W SL" H 1400 2574 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1400 2700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140216_Changjiang-Electronics-Tech--CJ-B5819W-SL_C8598.pdf" H 1400 2700 50  0001 C CNN
F 4 "C8598" H 1400 2700 50  0001 C CNN "JLC"
	1    1400 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 622155D1
P 2400 2300
F 0 "D1" H 2400 2517 50  0000 C CNN
F 1 "B5819W SL" H 2400 2426 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2400 2300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140216_Changjiang-Electronics-Tech--CJ-B5819W-SL_C8598.pdf" H 2400 2300 50  0001 C CNN
F 4 "C8598" H 2400 2300 50  0001 C CNN "JLC"
	1    2400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61F7EFE5
P 4900 4750
F 0 "D3" V 4939 4632 50  0000 R CNN
F 1 "Blue" V 4848 4632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4900 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811101510_Everlight-Elec-19-217-BHC-ZL1M2RY-3T_C72041.pdf" H 4900 4750 50  0001 C CNN
F 4 "C72041" H 4900 4750 50  0001 C CNN "JLC"
	1    4900 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 61F68833
P 6300 4750
F 0 "D4" V 6339 4632 50  0000 R CNN
F 1 "Green" V 6248 4632 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6300 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811101510_Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" H 6300 4750 50  0001 C CNN
F 4 "C72043" H 6300 4750 50  0001 C CNN "JLC"
	1    6300 4750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61D43916
P 1200 4700
AR Path="/61B5C5B6/61D43916" Ref="J?"  Part="1" 
AR Path="/61D43916" Ref="J2"  Part="1" 
F 0 "J2" H 1118 4375 50  0000 C CNN
F 1 "POWER" H 1118 4466 50  0000 C CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 1200 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 1200 4700 50  0001 C CNN
F 4 "C8465" H 1200 4700 50  0001 C CNN "JLC"
	1    1200 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61D7AF51
P 6400 6650
AR Path="/61B5C5B6/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61D7AF51" Ref="J3"  Part="1" 
AR Path="/61C03040/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61C031A1/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61C031A3/61D7AF51" Ref="J?"  Part="1" 
F 0 "J3" H 6480 6692 50  0000 L CNN
F 1 "OUT+" H 6480 6601 50  0000 L CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 6400 6650 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 6400 6650 50  0001 C CNN
F 4 "C8465" H 6400 6650 50  0001 C CNN "JLC"
	1    6400 6650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61C7540E
P 6400 7350
AR Path="/61B5C5B6/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C7540E" Ref="J4"  Part="1" 
AR Path="/61C03040/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C031A1/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C031A3/61C7540E" Ref="J?"  Part="1" 
F 0 "J4" H 6480 7392 50  0000 L CNN
F 1 "OUT-" H 6480 7301 50  0000 L CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 6400 7350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 6400 7350 50  0001 C CNN
F 4 "C8465" H 6400 7350 50  0001 C CNN "JLC"
	1    6400 7350
	1    0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 61BCD012
P 1750 2850
F 0 "C4" H 1865 2896 50  0000 L CNN
F 1 "1u/50" H 1865 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1788 2700 50  0001 C CNN
F 3 "~" H 1750 2850 50  0001 C CNN
F 4 "C15849" H 1750 2850 50  0001 C CNN "JLC"
	1    1750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61BEA8AF
P 2900 2850
AR Path="/61BEA8AF" Ref="C5"  Part="1" 
AR Path="/61B5C5B6/61BEA8AF" Ref="C?"  Part="1" 
F 0 "C5" H 3015 2896 50  0000 L CNN
F 1 "100n" H 3015 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2938 2700 50  0001 C CNN
F 3 "~" H 2900 2850 50  0001 C CNN
F 4 "C1525" H 2900 2850 50  0001 C CNN "JLC"
	1    2900 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61F9A9FB
P 4450 2700
AR Path="/61F9A9FB" Ref="C3"  Part="1" 
AR Path="/61B5C5B6/61F9A9FB" Ref="C?"  Part="1" 
AR Path="/61C03040/61F9A9FB" Ref="C?"  Part="1" 
AR Path="/61C031A1/61F9A9FB" Ref="C?"  Part="1" 
AR Path="/61C031A3/61F9A9FB" Ref="C?"  Part="1" 
F 0 "C3" V 4200 2700 50  0000 C CNN
F 1 "100n" V 4300 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4488 2550 50  0001 C CNN
F 3 "~" H 4450 2700 50  0001 C CNN
F 4 "C1525" H 4450 2700 50  0001 C CNN "JLC"
	1    4450 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 62237167
P 4600 3650
AR Path="/62237167" Ref="C7"  Part="1" 
AR Path="/61B5C5B6/62237167" Ref="C?"  Part="1" 
AR Path="/61C03040/62237167" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237167" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237167" Ref="C?"  Part="1" 
F 0 "C7" V 4852 3650 50  0000 C CNN
F 1 "100n" V 4761 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 3500 50  0001 C CNN
F 3 "~" H 4600 3650 50  0001 C CNN
F 4 "C1525" H 4600 3650 50  0001 C CNN "JLC"
	1    4600 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 62237A30
P 4600 3750
AR Path="/62237A30" Ref="C8"  Part="1" 
AR Path="/61B5C5B6/62237A30" Ref="C?"  Part="1" 
AR Path="/61C03040/62237A30" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237A30" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237A30" Ref="C?"  Part="1" 
F 0 "C8" V 4852 3750 50  0000 C CNN
F 1 "100n" V 4761 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 3600 50  0001 C CNN
F 3 "~" H 4600 3750 50  0001 C CNN
F 4 "C1525" H 4600 3750 50  0001 C CNN "JLC"
	1    4600 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 62237C27
P 4600 3850
AR Path="/62237C27" Ref="C9"  Part="1" 
AR Path="/61B5C5B6/62237C27" Ref="C?"  Part="1" 
AR Path="/61C03040/62237C27" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237C27" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237C27" Ref="C?"  Part="1" 
F 0 "C9" V 4440 3850 50  0000 C CNN
F 1 "100n" V 4349 3850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 3700 50  0001 C CNN
F 3 "~" H 4600 3850 50  0001 C CNN
F 4 "C1525" H 4600 3850 50  0001 C CNN "JLC"
	1    4600 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 61BC782F
P 9350 2300
AR Path="/61BC782F" Ref="C2"  Part="1" 
AR Path="/61B5C5B6/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C03040/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C031A1/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C031A3/61BC782F" Ref="C?"  Part="1" 
F 0 "C2" H 9235 2254 50  0000 R CNN
F 1 "100n" H 9235 2345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9388 2150 50  0001 C CNN
F 3 "~" H 9350 2300 50  0001 C CNN
F 4 "C1525" H 9350 2300 50  0001 C CNN "JLC"
	1    9350 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 61D26F4F
P 10150 2300
AR Path="/61D26F4F" Ref="C1"  Part="1" 
AR Path="/61B5C5B6/61D26F4F" Ref="C?"  Part="1" 
AR Path="/61C03040/61D26F4F" Ref="C?"  Part="1" 
AR Path="/61C031A1/61D26F4F" Ref="C?"  Part="1" 
AR Path="/61C031A3/61D26F4F" Ref="C?"  Part="1" 
F 0 "C1" H 10265 2254 50  0000 L CNN
F 1 "100n" H 10265 2345 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10188 2150 50  0001 C CNN
F 3 "~" H 10150 2300 50  0001 C CNN
F 4 "C1525" H 10150 2300 50  0001 C CNN "JLC"
	1    10150 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 61BBD7AA
P 10350 4050
AR Path="/61BBD7AA" Ref="C6"  Part="1" 
AR Path="/61B5C5B6/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C03040/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C031A1/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C031A3/61BBD7AA" Ref="C?"  Part="1" 
F 0 "C6" H 10465 4096 50  0000 L CNN
F 1 "100n" H 10465 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10388 3900 50  0001 C CNN
F 3 "~" H 10350 4050 50  0001 C CNN
F 4 "C1525" H 10350 4050 50  0001 C CNN "JLC"
	1    10350 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61D25866
P 10400 2300
F 0 "C14" H 10515 2346 50  0000 L CNN
F 1 "1u/50" H 10515 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10438 2150 50  0001 C CNN
F 3 "~" H 10400 2300 50  0001 C CNN
F 4 "C15849" H 10400 2300 50  0001 C CNN "JLC"
	1    10400 2300
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U1
U 4 1 61B9B2B8
P 9850 4750
F 0 "U1" H 9850 5067 50  0000 C CNN
F 1 "STM8S003F3Px" H 9850 4976 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9850 4750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9850 4750 50  0001 C CNN
F 4 "C52717" H 9850 4750 50  0001 C CNN "JLC"
	4    9850 4750
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U1
U 3 1 61B982BC
P 9700 3500
F 0 "U1" H 9807 3767 50  0000 C CNN
F 1 "STM8S003F3Px" H 9807 3676 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9700 3500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9700 3500 50  0001 C CNN
F 4 "C52717" H 9700 3500 50  0001 C CNN "JLC"
	3    9700 3500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L05_SOT89 U2
U 1 1 61CAD61B
P 2400 2700
F 0 "U2" H 2400 2942 50  0000 C CNN
F 1 "78L05" H 2400 2851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 2400 2900 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1809200029_UTC-Unisonic-Tech-78L05G-AB3-R_C71136.pdf" H 2400 2650 50  0001 C CNN
F 4 "C71136" H 2400 2700 50  0001 C CNN "JLC"
	1    2400 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:RotaryEncoder_Switch SW1
U 1 1 61C094D7
P 6200 3800
F 0 "SW1" H 6200 4167 50  0000 C CNN
F 1 "EC12D1524403" H 6200 4076 50  0000 C CNN
F 2 "mark:RotaryEncoder_Alps_EC12D_Vertical_H20mm_easy" H 6050 3960 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809291528_ALPSALPINE-EC12D1524403_C112349.pdf" H 6200 4060 50  0001 C CNN
F 4 "C112349" H 6200 3800 50  0001 C CNN "JLC"
	1    6200 3800
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U1
U 2 1 61B9907C
P 9700 1550
F 0 "U1" H 9807 1917 50  0000 C CNN
F 1 "STM8S003F3Px" H 9807 1826 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9700 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9700 1550 50  0001 C CNN
F 4 "C52717" H 9700 1550 50  0001 C CNN "JLC"
	2    9700 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J1
U 1 1 62187575
P 4700 1750
F 0 "J1" H 4750 2367 50  0000 C CNN
F 1 "DEBUG_ADDRESS_I2C_INT" H 4750 2276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Horizontal" H 4700 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/2003091512_XFCN-PZ254R-12-18P_C492437.pdf" H 4700 1750 50  0001 C CNN
F 4 "C492437" H 4700 1750 50  0001 C CNN "JLC"
	1    4700 1750
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U1
U 1 1 61B9A23A
P 7200 2200
F 0 "U1" H 7307 3217 50  0000 C CNN
F 1 "STM8S003F3Px" H 7307 3126 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7200 2200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 7200 2200 50  0001 C CNN
F 4 "C52717" H 7200 2200 50  0001 C CNN "JLC"
	1    7200 2200
	1    0    0    -1  
$EndComp
$Sheet
S 4350 6600 850  250 
U 6202E846
F0 "channel1" 50
F1 "channel.sch" 50
F2 "VDD" I L 4350 6650 50 
F3 "PWM" I L 4350 6750 50 
F4 "LOW_SIDE" U R 5200 6650 50 
$EndSheet
$Sheet
S 4350 7150 850  250 
U 620593AE
F0 "channel2" 50
F1 "channel.sch" 50
F2 "VDD" I L 4350 7200 50 
F3 "PWM" I L 4350 7300 50 
F4 "LOW_SIDE" U R 5200 7200 50 
$EndSheet
$Sheet
S 5650 4550 550  450 
U 61D242FF
F0 "led_driver1" 50
F1 "led_driver.sch" 50
F2 "EN" I L 5650 4700 50 
F3 "V+" I L 5650 4600 50 
F4 "LED_A" O R 6200 4600 50 
F5 "LED_K" O R 6200 4900 50 
$EndSheet
$Sheet
S 4250 4550 550  450 
U 61D33B82
F0 "led_driver2" 50
F1 "led_driver.sch" 50
F2 "EN" I L 4250 4700 50 
F3 "V+" I L 4250 4600 50 
F4 "LED_A" O R 4800 4600 50 
F5 "LED_K" O R 4800 4900 50 
$EndSheet
$EndSCHEMATC