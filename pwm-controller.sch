EESchema Schematic File Version 4
EELAYER 30 0
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
$EndDescr
$Comp
L power:GND #PWR06
U 1 1 61BB5A25
P 1900 4400
F 0 "#PWR06" H 1900 4150 50  0001 C CNN
F 1 "GND" H 1905 4227 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61BBB3BC
P 2850 2300
F 0 "#FLG03" H 2850 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 2473 50  0001 C CNN
F 2 "" H 2850 2300 50  0001 C CNN
F 3 "~" H 2850 2300 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61BC6801
P 2600 2300
F 0 "#FLG02" H 2600 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 2473 50  0001 C CNN
F 2 "" H 2600 2300 50  0001 C CNN
F 3 "~" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 61BC6CF2
P 2600 2300
F 0 "#PWR03" H 2600 2050 50  0001 C CNN
F 1 "GND" H 2605 2127 50  0000 C CNN
F 2 "" H 2600 2300 50  0001 C CNN
F 3 "" H 2600 2300 50  0001 C CNN
	1    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 61BC89E8
P 2400 4400
F 0 "#PWR07" H 2400 4150 50  0001 C CNN
F 1 "GND" H 2405 4227 50  0000 C CNN
F 2 "" H 2400 4400 50  0001 C CNN
F 3 "" H 2400 4400 50  0001 C CNN
	1    2400 4400
	1    0    0    -1  
$EndComp
Connection ~ 1250 4100
Wire Wire Line
	1250 4100 1600 4100
$Comp
L power:GND #PWR05
U 1 1 61BCD9E0
P 1250 4400
F 0 "#PWR05" H 1250 4150 50  0001 C CNN
F 1 "GND" H 1255 4227 50  0000 C CNN
F 2 "" H 1250 4400 50  0001 C CNN
F 3 "" H 1250 4400 50  0001 C CNN
	1    1250 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61BEA8AF
P 2400 4250
AR Path="/61BEA8AF" Ref="C2"  Part="1" 
AR Path="/61B5C5B6/61BEA8AF" Ref="C?"  Part="1" 
F 0 "C2" H 2515 4296 50  0000 L CNN
F 1 "100n/50" H 2515 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2438 4100 50  0001 C CNN
F 3 "~" H 2400 4250 50  0001 C CNN
F 4 "C307331" H 2400 4250 50  0001 C CNN "JLC"
	1    2400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4100 2400 4100
Connection ~ 2400 4100
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61D43916
P 1050 2400
AR Path="/61B5C5B6/61D43916" Ref="J?"  Part="1" 
AR Path="/61D43916" Ref="J4"  Part="1" 
F 0 "J4" H 968 2075 50  0000 C CNN
F 1 "POWER" H 968 2166 50  0000 C CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 1050 2400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 1050 2400 50  0001 C CNN
F 4 "C8465" H 1050 2400 50  0001 C CNN "JLC"
	1    1050 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61D4A984
P 1250 2400
AR Path="/61D4A984" Ref="#PWR0103"  Part="1" 
AR Path="/61B5C5B6/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D4A984" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D4A984" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 1250 2150 50  0001 C CNN
F 1 "GND" H 1255 2227 50  0000 C CNN
F 2 "" H 1250 2400 50  0001 C CNN
F 3 "" H 1250 2400 50  0001 C CNN
	1    1250 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61D7AF51
P 6400 7400
AR Path="/61B5C5B6/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61D7AF51" Ref="J5"  Part="1" 
AR Path="/61C03040/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61C031A1/61D7AF51" Ref="J?"  Part="1" 
AR Path="/61C031A3/61D7AF51" Ref="J?"  Part="1" 
F 0 "J5" H 6480 7442 50  0000 L CNN
F 1 "OUT+" H 6480 7351 50  0000 L CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 6400 7400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 6400 7400 50  0001 C CNN
F 4 "C8465" H 6400 7400 50  0001 C CNN "JLC"
	1    6400 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61E6FE9D
P 1150 7200
F 0 "H1" H 1250 7246 50  0000 L CNN
F 1 "JLC" H 1250 7155 50  0000 L CNN
F 2 "mark:JLCPCB_ToolingHole_1152_1300_1400_1650" H 1150 7200 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
F 4 "-" H 1150 7200 50  0001 C CNN "JLC"
	1    1150 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 61E7024D
P 1150 7400
F 0 "H5" H 1250 7446 50  0000 L CNN
F 1 "JLC" H 1250 7355 50  0000 L CNN
F 2 "mark:JLCPCB_ToolingHole_1152_1300_1400_1650" H 1150 7400 50  0001 C CNN
F 3 "~" H 1150 7400 50  0001 C CNN
F 4 "-" H 1150 7400 50  0001 C CNN "JLC"
	1    1150 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61E71653
P 1550 7200
F 0 "H2" H 1650 7246 50  0000 L CNN
F 1 "M2" H 1650 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1550 7200 50  0001 C CNN
F 3 "~" H 1550 7200 50  0001 C CNN
F 4 "-" H 1550 7200 50  0001 C CNN "JLC"
	1    1550 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61E7197C
P 1550 7400
F 0 "H4" H 1650 7446 50  0000 L CNN
F 1 "M2" H 1650 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1550 7400 50  0001 C CNN
F 3 "~" H 1550 7400 50  0001 C CNN
F 4 "-" H 1550 7400 50  0001 C CNN "JLC"
	1    1550 7400
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U3
U 3 1 61B982BC
P 9450 3700
F 0 "U3" H 9557 3967 50  0000 C CNN
F 1 "STM8S003F3Px" H 9557 3876 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9450 3700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9450 3700 50  0001 C CNN
F 4 "C52717" H 9450 3700 50  0001 C CNN "JLC"
	3    9450 3700
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U3
U 2 1 61B9907C
P 9450 2400
F 0 "U3" H 9557 2767 50  0000 C CNN
F 1 "STM8S003F3Px" H 9557 2676 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9450 2400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9450 2400 50  0001 C CNN
F 4 "C52717" H 9450 2400 50  0001 C CNN "JLC"
	2    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U3
U 1 1 61B9A23A
P 7550 3050
F 0 "U3" H 7657 4067 50  0000 C CNN
F 1 "STM8S003F3Px" H 7657 3976 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7550 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 7550 3050 50  0001 C CNN
F 4 "C52717" H 7550 3050 50  0001 C CNN "JLC"
	1    7550 3050
	1    0    0    -1  
$EndComp
$Comp
L mcu:STM8S003F3Px U3
U 4 1 61B9B2B8
P 9850 4700
F 0 "U3" H 9850 5017 50  0000 C CNN
F 1 "STM8S003F3Px" H 9850 4926 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9850 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121205_STMicroelectronics-STM8S003F3P6TR_C52717.pdf" H 9850 4700 50  0001 C CNN
F 4 "C52717" H 9850 4700 50  0001 C CNN "JLC"
	4    9850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BAA67D
P 10350 3700
AR Path="/61B5C5B6/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BAA67D" Ref="#PWR?"  Part="1" 
AR Path="/61BAA67D" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10350 3450 50  0001 C CNN
F 1 "GND" V 10355 3572 50  0000 R CNN
F 2 "" H 10350 3700 50  0001 C CNN
F 3 "" H 10350 3700 50  0001 C CNN
	1    10350 3700
	0    -1   -1   0   
$EndComp
Text GLabel 8150 2600 2    50   Input ~ 0
SCL
Text GLabel 8150 2700 2    50   Input ~ 0
SDA
Text GLabel 8150 2800 2    50   Input ~ 0
SADD2
Text GLabel 8150 2900 2    50   Input ~ 0
SADD1
Text GLabel 8150 3000 2    50   Input ~ 0
SADD0
Text GLabel 8150 3100 2    50   Input ~ 0
RE_I
Text GLabel 8150 3200 2    50   Input ~ 0
RE_Q
Text GLabel 8150 3300 2    50   Input ~ 0
SWIM
Text GLabel 8150 3500 2    50   Input ~ 0
PWM1
Text GLabel 8150 3700 2    50   Input ~ 0
UTX
Text GLabel 8150 3800 2    50   Input ~ 0
URX
Text GLabel 4800 3200 2    50   Input ~ 0
SCL
Text GLabel 4800 3300 2    50   Input ~ 0
SDA
$Comp
L Device:R R?
U 1 1 61BB99F2
P 4650 3200
AR Path="/61B5C5B6/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C03040/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61BB99F2" Ref="R?"  Part="1" 
AR Path="/61BB99F2" Ref="R4"  Part="1" 
F 0 "R4" V 4443 3200 50  0000 C CNN
F 1 "4.7k" V 4534 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3200 50  0001 C CNN
F 3 "~" H 4650 3200 50  0001 C CNN
F 4 "C25900" H 4650 3200 50  0001 C CNN "JLC"
	1    4650 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61BB9F0D
P 4650 3300
AR Path="/61B5C5B6/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C03040/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C031A1/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61C031A3/61BB9F0D" Ref="R?"  Part="1" 
AR Path="/61BB9F0D" Ref="R5"  Part="1" 
F 0 "R5" V 4443 3300 50  0000 C CNN
F 1 "4.7k" V 4534 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3300 50  0001 C CNN
F 3 "~" H 4650 3300 50  0001 C CNN
F 4 "C25900" H 4650 3300 50  0001 C CNN "JLC"
	1    4650 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3200 4500 3300
$Comp
L Device:C C7
U 1 1 61BBD7AA
P 10200 3700
AR Path="/61BBD7AA" Ref="C7"  Part="1" 
AR Path="/61B5C5B6/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C03040/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C031A1/61BBD7AA" Ref="C?"  Part="1" 
AR Path="/61C031A3/61BBD7AA" Ref="C?"  Part="1" 
F 0 "C7" V 10452 3700 50  0000 C CNN
F 1 "100n/50" V 10361 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10238 3550 50  0001 C CNN
F 3 "~" H 10200 3700 50  0001 C CNN
F 4 "C307331" H 10200 3700 50  0001 C CNN "JLC"
	1    10200 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC4F56
P 10350 2300
AR Path="/61B5C5B6/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC4F56" Ref="#PWR?"  Part="1" 
AR Path="/61BC4F56" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 10350 2050 50  0001 C CNN
F 1 "GND" V 10355 2172 50  0000 R CNN
F 2 "" H 10350 2300 50  0001 C CNN
F 3 "" H 10350 2300 50  0001 C CNN
	1    10350 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC6B78
P 10050 2500
AR Path="/61B5C5B6/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC6B78" Ref="#PWR?"  Part="1" 
AR Path="/61BC6B78" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 10050 2250 50  0001 C CNN
F 1 "GND" V 10055 2372 50  0000 R CNN
F 2 "" H 10050 2500 50  0001 C CNN
F 3 "" H 10050 2500 50  0001 C CNN
	1    10050 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BC73E0
P 9300 2950
AR Path="/61B5C5B6/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BC73E0" Ref="#PWR?"  Part="1" 
AR Path="/61BC73E0" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 9300 2700 50  0001 C CNN
F 1 "GND" V 9305 2822 50  0000 R CNN
F 2 "" H 9300 2950 50  0001 C CNN
F 3 "" H 9300 2950 50  0001 C CNN
	1    9300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 61BC782F
P 9450 2950
AR Path="/61BC782F" Ref="C8"  Part="1" 
AR Path="/61B5C5B6/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C03040/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C031A1/61BC782F" Ref="C?"  Part="1" 
AR Path="/61C031A3/61BC782F" Ref="C?"  Part="1" 
F 0 "C8" V 9702 2950 50  0000 C CNN
F 1 "100n/50" V 9611 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9488 2800 50  0001 C CNN
F 3 "~" H 9450 2950 50  0001 C CNN
F 4 "C307331" H 9450 2950 50  0001 C CNN "JLC"
	1    9450 2950
	0    -1   -1   0   
$EndComp
Text Notes 9600 3250 2    50   ~ 0
AN2860 p10f3
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 61BF8C59
P 4100 2450
F 0 "J6" H 4018 2867 50  0000 C CNN
F 1 "DEBUG" H 4018 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4100 2450 50  0001 C CNN
F 3 "~" H 4100 2450 50  0001 C CNN
F 4 "C50950" H 4100 2450 50  0001 C CNN "JLC"
	1    4100 2450
	-1   0    0    -1  
$EndComp
Text GLabel 4300 2250 2    50   Input ~ 0
SWIM
Text GLabel 4300 2450 2    50   Input ~ 0
UTX
Text GLabel 4300 2350 2    50   Input ~ 0
URX
Text GLabel 5100 3600 2    50   Input ~ 0
SADD0
Text GLabel 5100 3500 2    50   Input ~ 0
SADD1
Text GLabel 5100 3400 2    50   Input ~ 0
SADD2
$Comp
L Device:R R?
U 1 1 61C01475
P 4950 3400
AR Path="/61B5C5B6/61C01475" Ref="R?"  Part="1" 
AR Path="/61C03040/61C01475" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C01475" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C01475" Ref="R?"  Part="1" 
AR Path="/61C01475" Ref="R7"  Part="1" 
F 0 "R7" V 4743 3400 50  0000 C CNN
F 1 "4.7k" V 4834 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4880 3400 50  0001 C CNN
F 3 "~" H 4950 3400 50  0001 C CNN
F 4 "C25900" H 4950 3400 50  0001 C CNN "JLC"
	1    4950 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C01794
P 4950 3500
AR Path="/61B5C5B6/61C01794" Ref="R?"  Part="1" 
AR Path="/61C03040/61C01794" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C01794" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C01794" Ref="R?"  Part="1" 
AR Path="/61C01794" Ref="R9"  Part="1" 
F 0 "R9" V 4743 3500 50  0000 C CNN
F 1 "4.7k" V 4834 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4880 3500 50  0001 C CNN
F 3 "~" H 4950 3500 50  0001 C CNN
F 4 "C25900" H 4950 3500 50  0001 C CNN "JLC"
	1    4950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C0198D
P 4950 3600
AR Path="/61B5C5B6/61C0198D" Ref="R?"  Part="1" 
AR Path="/61C03040/61C0198D" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C0198D" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C0198D" Ref="R?"  Part="1" 
AR Path="/61C0198D" Ref="R11"  Part="1" 
F 0 "R11" V 5065 3600 50  0000 C CNN
F 1 "4.7k" V 5156 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4880 3600 50  0001 C CNN
F 3 "~" H 4950 3600 50  0001 C CNN
F 4 "C25900" H 4950 3600 50  0001 C CNN "JLC"
	1    4950 3600
	0    1    1    0   
$EndComp
Connection ~ 4500 3300
$Comp
L Device:RotaryEncoder_Switch SW1
U 1 1 61C094D7
P 7450 4500
F 0 "SW1" H 7450 4867 50  0000 C CNN
F 1 "EC12D1524403" H 7450 4776 50  0000 C CNN
F 2 "mark:RotaryEncoder_Alps_EC12D_Vertical_H20mm_easy" H 7300 4660 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809291528_ALPSALPINE-EC12D1524403_C112349.pdf" H 7450 4760 50  0001 C CNN
F 4 "C112349" H 7450 4500 50  0001 C CNN "JLC"
	1    7450 4500
	1    0    0    -1  
$EndComp
Text GLabel 6850 4400 0    50   Input ~ 0
RE_I
Text GLabel 6850 4600 0    50   Input ~ 0
RE_Q
$Comp
L power:GND #PWR?
U 1 1 61C0F07F
P 7150 4500
AR Path="/61B5C5B6/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0F07F" Ref="#PWR?"  Part="1" 
AR Path="/61C0F07F" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7150 4250 50  0001 C CNN
F 1 "GND" V 7155 4372 50  0000 R CNN
F 2 "" H 7150 4500 50  0001 C CNN
F 3 "" H 7150 4500 50  0001 C CNN
	1    7150 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0F561
P 7750 4600
AR Path="/61B5C5B6/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0F561" Ref="#PWR?"  Part="1" 
AR Path="/61C0F561" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7750 4350 50  0001 C CNN
F 1 "GND" V 7755 4472 50  0000 R CNN
F 2 "" H 7750 4600 50  0001 C CNN
F 3 "" H 7750 4600 50  0001 C CNN
	1    7750 4600
	0    -1   -1   0   
$EndComp
Text GLabel 8050 4400 2    50   Input ~ 0
RE_B
$Comp
L Device:R R?
U 1 1 61C18AD2
P 4650 4350
AR Path="/61B5C5B6/61C18AD2" Ref="R?"  Part="1" 
AR Path="/61C03040/61C18AD2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C18AD2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C18AD2" Ref="R?"  Part="1" 
AR Path="/61C18AD2" Ref="R6"  Part="1" 
F 0 "R6" V 4443 4350 50  0000 C CNN
F 1 "4.7k" V 4534 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 4350 50  0001 C CNN
F 3 "~" H 4650 4350 50  0001 C CNN
F 4 "C25900" H 4650 4350 50  0001 C CNN "JLC"
	1    4650 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C18AD9
P 4650 4450
AR Path="/61B5C5B6/61C18AD9" Ref="R?"  Part="1" 
AR Path="/61C03040/61C18AD9" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C18AD9" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C18AD9" Ref="R?"  Part="1" 
AR Path="/61C18AD9" Ref="R8"  Part="1" 
F 0 "R8" V 4443 4450 50  0000 C CNN
F 1 "4.7k" V 4534 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 4450 50  0001 C CNN
F 3 "~" H 4650 4450 50  0001 C CNN
F 4 "C25900" H 4650 4450 50  0001 C CNN "JLC"
	1    4650 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C18AE0
P 4650 4550
AR Path="/61B5C5B6/61C18AE0" Ref="R?"  Part="1" 
AR Path="/61C03040/61C18AE0" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C18AE0" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C18AE0" Ref="R?"  Part="1" 
AR Path="/61C18AE0" Ref="R10"  Part="1" 
F 0 "R10" V 4765 4550 50  0000 C CNN
F 1 "4.7k" V 4856 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 4550 50  0001 C CNN
F 3 "~" H 4650 4550 50  0001 C CNN
F 4 "C25900" H 4650 4550 50  0001 C CNN "JLC"
	1    4650 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4350 4500 4450
Connection ~ 4500 4450
Wire Wire Line
	4500 4450 4500 4550
Text GLabel 4800 4350 2    50   Input ~ 0
RE_I
Text GLabel 4800 4450 2    50   Input ~ 0
RE_Q
Text GLabel 4800 4550 2    50   Input ~ 0
RE_B
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BF8259
P 10050 2300
F 0 "#FLG0101" H 10050 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 2473 50  0001 C CNN
F 2 "" H 10050 2300 50  0001 C CNN
F 3 "~" H 10050 2300 50  0001 C CNN
	1    10050 2300
	1    0    0    -1  
$EndComp
Text Label 6200 7400 2    50   ~ 0
VIN
Wire Wire Line
	6200 7400 6200 7500
Text GLabel 8150 3600 2    50   Input ~ 0
INT
Text GLabel 4300 2550 2    50   Input ~ 0
INT
Text GLabel 5400 2250 0    50   Input ~ 0
INT
$Comp
L Device:R R?
U 1 1 61DF63DF
P 5550 2250
AR Path="/61B5C5B6/61DF63DF" Ref="R?"  Part="1" 
AR Path="/61C03040/61DF63DF" Ref="R?"  Part="1" 
AR Path="/61C031A1/61DF63DF" Ref="R?"  Part="1" 
AR Path="/61C031A3/61DF63DF" Ref="R?"  Part="1" 
AR Path="/61DF63DF" Ref="R13"  Part="1" 
F 0 "R13" V 5757 2250 50  0000 C CNN
F 1 "4.7k" V 5666 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5480 2250 50  0001 C CNN
F 3 "~" H 5550 2250 50  0001 C CNN
F 4 "C25900" H 5550 2250 50  0001 C CNN "JLC"
	1    5550 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61E0A1CC
P 5850 2250
AR Path="/61B5C5B6/61E0A1CC" Ref="R?"  Part="1" 
AR Path="/61C03040/61E0A1CC" Ref="R?"  Part="1" 
AR Path="/61C031A1/61E0A1CC" Ref="R?"  Part="1" 
AR Path="/61C031A3/61E0A1CC" Ref="R?"  Part="1" 
AR Path="/61E0A1CC" Ref="R14"  Part="1" 
F 0 "R14" V 6057 2250 50  0000 C CNN
F 1 "4.7k" V 5966 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5780 2250 50  0001 C CNN
F 3 "~" H 5850 2250 50  0001 C CNN
F 4 "C25900" H 5850 2250 50  0001 C CNN "JLC"
	1    5850 2250
	0    -1   -1   0   
$EndComp
Text Notes 1000 2750 0    50   ~ 0
<10mA for control+driver, <10A for target
$Comp
L Device:LED D1
U 1 1 61F68833
P 4900 5450
F 0 "D1" V 4939 5332 50  0000 R CNN
F 1 "Green" V 4848 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4900 5450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811101510_Everlight-Elec-19-217-GHC-YR1S2-3T_C72043.pdf" H 4900 5450 50  0001 C CNN
F 4 "C72043" H 4900 5450 50  0001 C CNN "JLC"
	1    4900 5450
	0    -1   -1   0   
$EndComp
Text GLabel 8150 2300 2    50   Input ~ 0
LED1
Text GLabel 5650 5400 0    50   Input ~ 0
LED2
$Sheet
S 4350 6600 850  250 
U 6202E846
F0 "channel1" 50
F1 "channel.sch" 50
F2 "VDD" I L 4350 6650 50 
F3 "PWM" I L 4350 6750 50 
F4 "LOW_SIDE" U R 5200 6650 50 
$EndSheet
Text GLabel 8150 3400 2    50   Input ~ 0
RE_B
Text GLabel 8150 2400 2    50   Input ~ 0
LED2
Text GLabel 8150 2500 2    50   Input ~ 0
PWM2
$Comp
L power:GND #PWR?
U 1 1 61BFB017
P 4300 2650
AR Path="/61B5C5B6/61BFB017" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BFB017" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BFB017" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BFB017" Ref="#PWR?"  Part="1" 
AR Path="/61BFB017" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4300 2400 50  0001 C CNN
F 1 "GND" V 4305 2522 50  0000 R CNN
F 2 "" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	0    -1   -1   0   
$EndComp
Text GLabel 5200 6650 2    50   Input ~ 0
DRAIN1
Text GLabel 6200 6650 0    50   Input ~ 0
DRAIN1
Text GLabel 6200 6750 0    50   Input ~ 0
DRAIN2
$Sheet
S 4350 7150 850  250 
U 620593AE
F0 "channel2" 50
F1 "channel.sch" 50
F2 "VDD" I L 4350 7200 50 
F3 "PWM" I L 4350 7300 50 
F4 "LOW_SIDE" U R 5200 7200 50 
$EndSheet
Text GLabel 5200 7200 2    50   Input ~ 0
DRAIN2
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 61C7540E
P 6400 6750
AR Path="/61B5C5B6/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C7540E" Ref="J2"  Part="1" 
AR Path="/61C03040/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C031A1/61C7540E" Ref="J?"  Part="1" 
AR Path="/61C031A3/61C7540E" Ref="J?"  Part="1" 
F 0 "J2" H 6480 6792 50  0000 L CNN
F 1 "OUT-" H 6480 6701 50  0000 L CNN
F 2 "mark:ScrewTerminal_5.08P_1x02_10.16x10.16mm" H 6400 6750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1912251636_Ningbo-Kangnex-Elec-WJ500V-5.08-2P_C8465.pdf" H 6400 6750 50  0001 C CNN
F 4 "C8465" H 6400 6750 50  0001 C CNN "JLC"
	1    6400 6750
	1    0    0    1   
$EndComp
Wire Notes Line
	3950 1800 3950 5900
Wire Notes Line
	3950 5900 10900 5900
Wire Notes Line
	3950 7650 6800 7650
Wire Notes Line
	800  6900 800  7650
Wire Notes Line
	800  7650 2000 7650
Wire Notes Line
	2000 7650 2000 6900
Wire Notes Line
	2000 6900 800  6900
Wire Notes Line
	800  1850 800  6300
Wire Notes Line
	800  6300 3600 6300
Wire Notes Line
	3600 6300 3600 1850
Wire Notes Line
	3600 1850 800  1850
Wire Wire Line
	1100 4100 1250 4100
$Comp
L Device:C C1
U 1 1 61BCD012
P 1250 4250
F 0 "C1" H 1365 4296 50  0000 L CNN
F 1 "1u/50" H 1365 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1288 4100 50  0001 C CNN
F 3 "~" H 1250 4250 50  0001 C CNN
F 4 "C15849" H 1250 4250 50  0001 C CNN "JLC"
	1    1250 4250
	1    0    0    -1  
$EndComp
Wire Notes Line
	10900 5900 10900 1800
Wire Notes Line
	10900 1800 3950 1800
Text Notes 800  1700 0    100  ~ 20
Power
Text Notes 3950 1750 0    100  ~ 20
Digital
Text Notes 800  6800 0    100  ~ 20
Mechanical
Text Notes 3950 6300 0    100  ~ 20
Output drivers
Text Notes 5200 2550 0    50   ~ 0
INT is I2C interrupt for\nslaves to callback on.
$Comp
L power:GND #PWR?
U 1 1 61E00DBA
P 5950 3300
AR Path="/61B5C5B6/61E00DBA" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61E00DBA" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61E00DBA" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61E00DBA" Ref="#PWR?"  Part="1" 
AR Path="/61E00DBA" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5950 3050 50  0001 C CNN
F 1 "GND" V 5955 3172 50  0000 R CNN
F 2 "" H 5950 3300 50  0001 C CNN
F 3 "" H 5950 3300 50  0001 C CNN
	1    5950 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C28E5B
P 5950 3200
AR Path="/61B5C5B6/61C28E5B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C28E5B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C28E5B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C28E5B" Ref="#PWR?"  Part="1" 
AR Path="/61C28E5B" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5950 2950 50  0001 C CNN
F 1 "GND" V 5955 3072 50  0000 R CNN
F 2 "" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J7
U 1 1 61BEA00B
P 6250 3400
F 0 "J7" H 6300 3817 50  0000 C CNN
F 1 "I2C" H 6300 3726 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 6250 3400 50  0001 C CNN
F 3 "~" H 6250 3400 50  0001 C CNN
F 4 "C492399" H 6250 3400 50  0001 C CNN "JLC"
	1    6250 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2B61F
P 5950 3400
AR Path="/61B5C5B6/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2B61F" Ref="#PWR?"  Part="1" 
AR Path="/61C2B61F" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5950 3150 50  0001 C CNN
F 1 "GND" V 5955 3272 50  0000 R CNN
F 2 "" H 5950 3400 50  0001 C CNN
F 3 "" H 5950 3400 50  0001 C CNN
	1    5950 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2A7C7
P 5950 3500
AR Path="/61B5C5B6/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2A7C7" Ref="#PWR?"  Part="1" 
AR Path="/61C2A7C7" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5950 3250 50  0001 C CNN
F 1 "GND" V 5955 3372 50  0000 R CNN
F 2 "" H 5950 3500 50  0001 C CNN
F 3 "" H 5950 3500 50  0001 C CNN
	1    5950 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C29892
P 5950 3600
AR Path="/61B5C5B6/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C29892" Ref="#PWR?"  Part="1" 
AR Path="/61C29892" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 5950 3350 50  0001 C CNN
F 1 "GND" V 5955 3472 50  0000 R CNN
F 2 "" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0001 C CNN
	1    5950 3600
	0    1    1    0   
$EndComp
Text GLabel 6450 3200 2    50   Input ~ 0
SCL
Text GLabel 6450 3300 2    50   Input ~ 0
SDA
Text GLabel 6450 3400 2    50   Input ~ 0
SADD2
Text GLabel 6450 3500 2    50   Input ~ 0
SADD1
Text GLabel 6450 3600 2    50   Input ~ 0
SADD0
Text GLabel 6000 4350 2    50   Input ~ 0
RE_I
Text GLabel 6000 4450 2    50   Input ~ 0
RE_Q
Text GLabel 6000 4550 2    50   Input ~ 0
RE_B
$Comp
L power:GND #PWR?
U 1 1 62236DA6
P 5700 4350
AR Path="/61B5C5B6/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/62236DA6" Ref="#PWR?"  Part="1" 
AR Path="/62236DA6" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 5700 4100 50  0001 C CNN
F 1 "GND" V 5705 4222 50  0000 R CNN
F 2 "" H 5700 4350 50  0001 C CNN
F 3 "" H 5700 4350 50  0001 C CNN
	1    5700 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4350 5700 4450
$Comp
L Device:C C21
U 1 1 62237167
P 5850 4350
AR Path="/62237167" Ref="C21"  Part="1" 
AR Path="/61B5C5B6/62237167" Ref="C?"  Part="1" 
AR Path="/61C03040/62237167" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237167" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237167" Ref="C?"  Part="1" 
F 0 "C21" V 6102 4350 50  0000 C CNN
F 1 "3.3n" V 6011 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5888 4200 50  0001 C CNN
F 3 "~" H 5850 4350 50  0001 C CNN
F 4 "C26404" H 5850 4350 50  0001 C CNN "JLC"
	1    5850 4350
	0    -1   -1   0   
$EndComp
Connection ~ 5700 4350
$Comp
L Device:C C22
U 1 1 62237A30
P 5850 4450
AR Path="/62237A30" Ref="C22"  Part="1" 
AR Path="/61B5C5B6/62237A30" Ref="C?"  Part="1" 
AR Path="/61C03040/62237A30" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237A30" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237A30" Ref="C?"  Part="1" 
F 0 "C22" V 6102 4450 50  0000 C CNN
F 1 "3.3n" V 6011 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5888 4300 50  0001 C CNN
F 3 "~" H 5850 4450 50  0001 C CNN
F 4 "C26404" H 5850 4450 50  0001 C CNN "JLC"
	1    5850 4450
	0    -1   -1   0   
$EndComp
Connection ~ 5700 4450
Wire Wire Line
	5700 4450 5700 4550
$Comp
L Device:C C23
U 1 1 62237C27
P 5850 4550
AR Path="/62237C27" Ref="C23"  Part="1" 
AR Path="/61B5C5B6/62237C27" Ref="C?"  Part="1" 
AR Path="/61C03040/62237C27" Ref="C?"  Part="1" 
AR Path="/61C031A1/62237C27" Ref="C?"  Part="1" 
AR Path="/61C031A3/62237C27" Ref="C?"  Part="1" 
F 0 "C23" V 5690 4550 50  0000 C CNN
F 1 "3.3n" V 5599 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5888 4400 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
F 4 "C26404" H 5850 4550 50  0001 C CNN "JLC"
	1    5850 4550
	0    -1   -1   0   
$EndComp
Text Notes 4000 1950 0    50   ~ 0
Debug
Text Notes 4000 2900 0    50   ~ 0
I2C and master/slave/address config
Text Notes 4000 4050 0    50   ~ 0
Rotary encoder
$Comp
L Device:LED D2
U 1 1 61F7EFE5
P 6300 5450
F 0 "D2" V 6339 5332 50  0000 R CNN
F 1 "Blue" V 6248 5332 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6300 5450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811101510_Everlight-Elec-19-217-BHC-ZL1M2RY-3T_C72041.pdf" H 6300 5450 50  0001 C CNN
F 4 "C72041" H 6300 5450 50  0001 C CNN "JLC"
	1    6300 5450
	0    -1   -1   0   
$EndComp
Text GLabel 1250 2300 2    50   Input ~ 0
VIN
Text GLabel 2850 2300 3    50   Input ~ 0
VIN
Text GLabel 1100 4100 0    50   Input ~ 0
VIN
Text Notes 1450 3750 0    50   ~ 0
Vin(max)=30V\nIout(min)=1mA\nIout(max)=100mA (15mA wrt. thermals)\nP(max) = 350mW\n\nFor Vdrop=20V, I=10mA : P=200mW
$Comp
L Regulator_Linear:L78L05_SOT89 U1
U 1 1 61CAD61B
P 1900 4100
F 0 "U1" H 1900 4342 50  0000 C CNN
F 1 "78L05" H 1900 4251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 1900 4300 50  0001 C CIN
F 3 "https://datasheet.lcsc.com/lcsc/1809200029_UTC-Unisonic-Tech-78L05G-AB3-R_C71136.pdf" H 1900 4050 50  0001 C CNN
F 4 "C71136" H 1900 4100 50  0001 C CNN "JLC"
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 61CB0C45
P 3200 4100
F 0 "#PWR0101" H 3200 3950 50  0001 C CNN
F 1 "+5V" V 3215 4228 50  0000 L CNN
F 2 "" H 3200 4100 50  0001 C CNN
F 3 "" H 3200 4100 50  0001 C CNN
	1    3200 4100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 61CB57CD
P 4500 3200
F 0 "#PWR0104" H 4500 3050 50  0001 C CNN
F 1 "+5V" V 4515 3328 50  0000 L CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	0    -1   -1   0   
$EndComp
Connection ~ 4500 3200
$Comp
L power:+5V #PWR0105
U 1 1 61CB6423
P 4500 4350
F 0 "#PWR0105" H 4500 4200 50  0001 C CNN
F 1 "+5V" V 4515 4478 50  0000 L CNN
F 2 "" H 4500 4350 50  0001 C CNN
F 3 "" H 4500 4350 50  0001 C CNN
	1    4500 4350
	0    -1   -1   0   
$EndComp
Connection ~ 4500 4350
$Comp
L power:+5V #PWR0106
U 1 1 61CB6A79
P 6000 2250
F 0 "#PWR0106" H 6000 2100 50  0001 C CNN
F 1 "+5V" V 6015 2378 50  0000 L CNN
F 2 "" H 6000 2250 50  0001 C CNN
F 3 "" H 6000 2250 50  0001 C CNN
	1    6000 2250
	0    1    1    0   
$EndComp
Connection ~ 10050 2300
$Comp
L Device:C C6
U 1 1 61BC1BC7
P 10200 2300
AR Path="/61BC1BC7" Ref="C6"  Part="1" 
AR Path="/61B5C5B6/61BC1BC7" Ref="C?"  Part="1" 
AR Path="/61C03040/61BC1BC7" Ref="C?"  Part="1" 
AR Path="/61C031A1/61BC1BC7" Ref="C?"  Part="1" 
AR Path="/61C031A3/61BC1BC7" Ref="C?"  Part="1" 
F 0 "C6" V 10452 2300 50  0000 C CNN
F 1 "3.3n" V 10361 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10238 2150 50  0001 C CNN
F 3 "~" H 10200 2300 50  0001 C CNN
F 4 "C26404" H 10200 2300 50  0001 C CNN "JLC"
	1    10200 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 61CB7FC5
P 10050 2400
F 0 "#PWR0110" H 10050 2250 50  0001 C CNN
F 1 "+5V" V 10065 2528 50  0000 L CNN
F 2 "" H 10050 2400 50  0001 C CNN
F 3 "" H 10050 2400 50  0001 C CNN
	1    10050 2400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 61CB9711
P 4350 6650
F 0 "#PWR0115" H 4350 6500 50  0001 C CNN
F 1 "+5V" V 4365 6778 50  0000 L CNN
F 2 "" H 4350 6650 50  0001 C CNN
F 3 "" H 4350 6650 50  0001 C CNN
	1    4350 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 61CB9CF3
P 4350 7200
F 0 "#PWR0116" H 4350 7050 50  0001 C CNN
F 1 "+5V" V 4365 7328 50  0000 L CNN
F 2 "" H 4350 7200 50  0001 C CNN
F 3 "" H 4350 7200 50  0001 C CNN
	1    4350 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 61CBDD17
P 9600 2950
F 0 "#PWR0119" H 9600 2800 50  0001 C CNN
F 1 "+5V" V 9615 3078 50  0000 L CNN
F 2 "" H 9600 2950 50  0001 C CNN
F 3 "" H 9600 2950 50  0001 C CNN
	1    9600 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CD939B
P 7000 4400
AR Path="/61B5C5B6/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C03040/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CD939B" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CD939B" Ref="R?"  Part="1" 
AR Path="/61CD939B" Ref="R1"  Part="1" 
F 0 "R1" V 6793 4400 50  0000 C CNN
F 1 "220" V 6884 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6930 4400 50  0001 C CNN
F 3 "~" H 7000 4400 50  0001 C CNN
F 4 "C25091" H 7000 4400 50  0001 C CNN "JLC"
	1    7000 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CD98C2
P 7000 4600
AR Path="/61B5C5B6/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C03040/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CD98C2" Ref="R?"  Part="1" 
AR Path="/61CD98C2" Ref="R17"  Part="1" 
F 0 "R17" V 7115 4600 50  0000 C CNN
F 1 "220" V 7206 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6930 4600 50  0001 C CNN
F 3 "~" H 7000 4600 50  0001 C CNN
F 4 "C25091" H 7000 4600 50  0001 C CNN "JLC"
	1    7000 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61CDA382
P 7900 4400
AR Path="/61B5C5B6/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C03040/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C031A1/61CDA382" Ref="R?"  Part="1" 
AR Path="/61C031A3/61CDA382" Ref="R?"  Part="1" 
AR Path="/61CDA382" Ref="R3"  Part="1" 
F 0 "R3" V 7693 4400 50  0000 C CNN
F 1 "220" V 7784 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7830 4400 50  0001 C CNN
F 3 "~" H 7900 4400 50  0001 C CNN
F 4 "C25091" H 7900 4400 50  0001 C CNN "JLC"
	1    7900 4400
	0    1    1    0   
$EndComp
Text GLabel 4350 7300 0    50   Input ~ 0
PWM2
Text GLabel 4350 6750 0    50   Input ~ 0
PWM1
$Comp
L Connector:TestPoint TP1
U 1 1 61DB16E2
P 3200 2350
F 0 "TP1" H 3258 2468 50  0000 L CNN
F 1 "TP5V" H 3258 2377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3200 2350 50  0001 C CNN
F 3 "~" H 3200 2350 50  0001 C CNN
F 4 "-" H 3200 2350 50  0001 C CNN "JLC"
	1    3200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61DB185A
P 3200 2350
F 0 "#PWR01" H 3200 2200 50  0001 C CNN
F 1 "+5V" H 3215 2523 50  0000 C CNN
F 2 "" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	-1   0    0    1   
$EndComp
Text Notes 8350 5800 0    50   ~ 0
MCU:\n - Table 21: 5mA @ 16MHz / 1mA @ 2MHz / <1mA @ 128kHz\n - Peripherals approx 1mA extra.\nGPIO: 1mA max loading, per 4.7kΩ pullup\n\nInternal pullups 30-80kΩ (§9.3.6), could use those\nfor all except I2C, instead of 4.7kΩ resistors.  Would\nconsiderably improve the routing.
Wire Notes Line
	6800 6400 3950 6400
Wire Notes Line
	6800 7650 6800 6400
Wire Notes Line
	3950 6400 3950 7650
Text Notes 5200 1950 0    50   ~ 0
Slave interrupt
Wire Wire Line
	2400 4100 3200 4100
$Sheet
S 4250 5250 550  450 
U 61D242FF
F0 "led_driver1" 50
F1 "led_driver.sch" 50
F2 "EN" I L 4250 5400 50 
F3 "V+" I L 4250 5300 50 
F4 "LED_A" O R 4800 5300 50 
F5 "LED_K" O R 4800 5600 50 
$EndSheet
Wire Wire Line
	4800 5300 4900 5300
Wire Wire Line
	4900 5600 4800 5600
Text GLabel 4250 5300 0    50   Input ~ 0
VIN
Text GLabel 4250 5400 0    50   Input ~ 0
LED1
Text Notes 4000 5100 0    50   ~ 0
LEDs
$Sheet
S 5650 5250 550  450 
U 61D33B82
F0 "led_driver2" 50
F1 "led_driver.sch" 50
F2 "EN" I L 5650 5400 50 
F3 "V+" I L 5650 5300 50 
F4 "LED_A" O R 6200 5300 50 
F5 "LED_K" O R 6200 5600 50 
$EndSheet
Wire Wire Line
	6200 5300 6300 5300
Wire Wire Line
	6300 5600 6200 5600
Text GLabel 5650 5300 0    50   Input ~ 0
VIN
$Comp
L Device:R R?
U 1 1 61D63096
P 4650 3400
AR Path="/61B5C5B6/61D63096" Ref="R?"  Part="1" 
AR Path="/61C03040/61D63096" Ref="R?"  Part="1" 
AR Path="/61C031A1/61D63096" Ref="R?"  Part="1" 
AR Path="/61C031A3/61D63096" Ref="R?"  Part="1" 
AR Path="/61D63096" Ref="R19"  Part="1" 
F 0 "R19" V 4443 3400 50  0000 C CNN
F 1 "4.7k" V 4534 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3400 50  0001 C CNN
F 3 "~" H 4650 3400 50  0001 C CNN
F 4 "C25900" H 4650 3400 50  0001 C CNN "JLC"
	1    4650 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D6309D
P 4650 3500
AR Path="/61B5C5B6/61D6309D" Ref="R?"  Part="1" 
AR Path="/61C03040/61D6309D" Ref="R?"  Part="1" 
AR Path="/61C031A1/61D6309D" Ref="R?"  Part="1" 
AR Path="/61C031A3/61D6309D" Ref="R?"  Part="1" 
AR Path="/61D6309D" Ref="R21"  Part="1" 
F 0 "R21" V 4443 3500 50  0000 C CNN
F 1 "4.7k" V 4534 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3500 50  0001 C CNN
F 3 "~" H 4650 3500 50  0001 C CNN
F 4 "C25900" H 4650 3500 50  0001 C CNN "JLC"
	1    4650 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61D630A4
P 4650 3600
AR Path="/61B5C5B6/61D630A4" Ref="R?"  Part="1" 
AR Path="/61C03040/61D630A4" Ref="R?"  Part="1" 
AR Path="/61C031A1/61D630A4" Ref="R?"  Part="1" 
AR Path="/61C031A3/61D630A4" Ref="R?"  Part="1" 
AR Path="/61D630A4" Ref="R22"  Part="1" 
F 0 "R22" V 4765 3600 50  0000 C CNN
F 1 "4.7k" V 4856 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3600 50  0001 C CNN
F 3 "~" H 4650 3600 50  0001 C CNN
F 4 "C25900" H 4650 3600 50  0001 C CNN "JLC"
	1    4650 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3300 4500 3400
Connection ~ 4500 3400
Wire Wire Line
	4500 3400 4500 3500
Connection ~ 4500 3500
Wire Wire Line
	4500 3500 4500 3600
$EndSCHEMATC
