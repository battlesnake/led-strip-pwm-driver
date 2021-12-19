EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Transistor_FET:AO3400A Q?
U 1 1 6203BADE
P 1350 4200
AR Path="/61B5C5B6/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BADE" Ref="Q?"  Part="1" 
AR Path="/6203BADE" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BADE" Ref="Q1"  Part="1" 
AR Path="/620593AE/6203BADE" Ref="Q4"  Part="1" 
F 0 "Q4" H 1555 4246 50  0000 L CNN
F 1 "AO3400A" H 1555 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1550 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 1350 4200 50  0001 L CNN
F 4 "C20917" H 1350 4200 50  0001 C CNN "JLC"
	1    1350 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 6203BAE5
P 2100 4200
AR Path="/61B5C5B6/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BAE5" Ref="Q2"  Part="1" 
AR Path="/620593AE/6203BAE5" Ref="Q5"  Part="1" 
F 0 "Q5" H 2305 4246 50  0000 L CNN
F 1 "AO3400A" H 2305 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2300 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 2100 4200 50  0001 L CNN
F 4 "C20917" H 2100 4200 50  0001 C CNN "JLC"
	1    2100 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 6203BAEC
P 2850 4200
AR Path="/61B5C5B6/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BAEC" Ref="Q3"  Part="1" 
AR Path="/620593AE/6203BAEC" Ref="Q6"  Part="1" 
F 0 "Q6" H 3055 4246 50  0000 L CNN
F 1 "AO3400A" H 3055 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3050 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 2850 4200 50  0001 L CNN
F 4 "C20917" H 2850 4200 50  0001 C CNN "JLC"
	1    2850 4200
	1    0    0    -1  
$EndComp
Connection ~ 1900 4200
Wire Wire Line
	2650 4200 1900 4200
Wire Wire Line
	1450 4400 2200 4400
Connection ~ 2200 4400
Wire Wire Line
	2200 4400 2950 4400
Wire Wire Line
	1450 4500 1450 4400
Connection ~ 1450 4400
Connection ~ 2200 4000
Wire Wire Line
	2200 4000 1450 4000
Wire Wire Line
	2950 4000 2200 4000
Text Label 800  4200 0    50   ~ 0
GATE
Text Label 1450 4000 0    50   ~ 0
DRAIN
$Comp
L power:GND #PWR?
U 1 1 6203BB32
P 1450 4500
AR Path="/61B5C5B6/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB32" Ref="#PWR011"  Part="1" 
AR Path="/620593AE/6203BB32" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 1450 4250 50  0001 C CNN
F 1 "GND" H 1455 4327 50  0000 C CNN
F 2 "" H 1450 4500 50  0001 C CNN
F 3 "" H 1450 4500 50  0001 C CNN
	1    1450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4200 1900 4200
Text Notes 3900 1700 0    50   ~ 0
Base resistors reduce shoot-through that might occur\nif an output transistor saturates before a transition.\n\nEmitter resistors and shunt cap set output rise/fall time.\n\n120Ω/100nF for fc=13.3kHz\n\nRecommend driving with PWM frequency of 300-500Hz,\nideally with factors: (24/30/)72/120, i.e. 360Hz or 480Hz.\nThis should eliminate flicker in video.
Wire Wire Line
	800  4200 1150 4200
Connection ~ 2950 4000
Text HLabel 6400 4000 2    50   UnSpc ~ 0
LOW_SIDE
$Comp
L Device:C C?
U 1 1 621CD29D
P 3900 4150
AR Path="/621CD29D" Ref="C?"  Part="1" 
AR Path="/6202E846/621CD29D" Ref="C13"  Part="1" 
AR Path="/620593AE/621CD29D" Ref="C17"  Part="1" 
F 0 "C17" H 4015 4196 50  0000 L CNN
F 1 "100n/50" H 4015 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 4000 50  0001 C CNN
F 3 "~" H 3900 4150 50  0001 C CNN
F 4 "C307331" H 3900 4150 50  0001 C CNN "JLC"
	1    3900 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621CE160
P 3900 4300
AR Path="/61B5C5B6/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621CE160" Ref="#PWR029"  Part="1" 
AR Path="/620593AE/621CE160" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 3900 4050 50  0001 C CNN
F 1 "GND" H 3905 4127 50  0000 C CNN
F 2 "" H 3900 4300 50  0001 C CNN
F 3 "" H 3900 4300 50  0001 C CNN
	1    3900 4300
	1    0    0    -1  
$EndComp
Text Notes 3750 4850 0    50   ~ 0
\n\nAssuming 1A @ 12V (12Ω effective load), fc=32kHz\n\nAssuming 5A @ 24V (4.8Ω effective load), fc=80kHz
Wire Wire Line
	2950 4000 3900 4000
Connection ~ 3900 4000
Wire Wire Line
	3900 4000 4500 4000
$Comp
L Device:C C?
U 1 1 621D0FB7
P 4500 4150
AR Path="/621D0FB7" Ref="C?"  Part="1" 
AR Path="/6202E846/621D0FB7" Ref="C14"  Part="1" 
AR Path="/620593AE/621D0FB7" Ref="C18"  Part="1" 
F 0 "C18" H 4615 4196 50  0000 L CNN
F 1 "100n/50" H 4615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4538 4000 50  0001 C CNN
F 3 "~" H 4500 4150 50  0001 C CNN
F 4 "C307331" H 4500 4150 50  0001 C CNN "JLC"
	1    4500 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D0FBD
P 4500 4300
AR Path="/61B5C5B6/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D0FBD" Ref="#PWR030"  Part="1" 
AR Path="/620593AE/621D0FBD" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 4500 4050 50  0001 C CNN
F 1 "GND" H 4505 4127 50  0000 C CNN
F 2 "" H 4500 4300 50  0001 C CNN
F 3 "" H 4500 4300 50  0001 C CNN
	1    4500 4300
	1    0    0    -1  
$EndComp
Connection ~ 4500 4000
Wire Wire Line
	4500 4000 5100 4000
$Comp
L Device:C C?
U 1 1 621D2370
P 5100 4150
AR Path="/621D2370" Ref="C?"  Part="1" 
AR Path="/6202E846/621D2370" Ref="C15"  Part="1" 
AR Path="/620593AE/621D2370" Ref="C19"  Part="1" 
F 0 "C19" H 5215 4196 50  0000 L CNN
F 1 "100n/50" H 5215 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5138 4000 50  0001 C CNN
F 3 "~" H 5100 4150 50  0001 C CNN
F 4 "C307331" H 5100 4150 50  0001 C CNN "JLC"
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D2376
P 5100 4300
AR Path="/61B5C5B6/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D2376" Ref="#PWR031"  Part="1" 
AR Path="/620593AE/621D2376" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 5100 4050 50  0001 C CNN
F 1 "GND" H 5105 4127 50  0000 C CNN
F 2 "" H 5100 4300 50  0001 C CNN
F 3 "" H 5100 4300 50  0001 C CNN
	1    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 621D2EC9
P 5700 4150
AR Path="/621D2EC9" Ref="C?"  Part="1" 
AR Path="/6202E846/621D2EC9" Ref="C16"  Part="1" 
AR Path="/620593AE/621D2EC9" Ref="C20"  Part="1" 
F 0 "C20" H 5815 4196 50  0000 L CNN
F 1 "100n/50" H 5815 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5738 4000 50  0001 C CNN
F 3 "~" H 5700 4150 50  0001 C CNN
F 4 "C307331" H 5700 4150 50  0001 C CNN "JLC"
	1    5700 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D2ECF
P 5700 4300
AR Path="/61B5C5B6/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D2ECF" Ref="#PWR032"  Part="1" 
AR Path="/620593AE/621D2ECF" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 5700 4050 50  0001 C CNN
F 1 "GND" H 5705 4127 50  0000 C CNN
F 2 "" H 5700 4300 50  0001 C CNN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5700 4300
	1    0    0    -1  
$EndComp
Connection ~ 5100 4000
Wire Wire Line
	5100 4000 5700 4000
Connection ~ 5700 4000
Wire Wire Line
	5700 4000 6400 4000
$Comp
L Transistor_BJT:MMBT5551L Q8
U 1 1 61C08552
P 2000 2450
AR Path="/6202E846/61C08552" Ref="Q8"  Part="1" 
AR Path="/620593AE/61C08552" Ref="Q11"  Part="1" 
F 0 "Q11" H 2191 2496 50  0000 L CNN
F 1 "MMBT5551" H 2191 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2200 2375 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 2000 2450 50  0001 L CNN
F 4 "C2145" H 2000 2450 50  0001 C CNN "JLC"
	1    2000 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0AAB3
P 2100 2650
AR Path="/61C0AAB3" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C0AAB3" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0AAB3" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0AAB3" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0AAB3" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C0AAB3" Ref="#PWR09"  Part="1" 
AR Path="/620593AE/61C0AAB3" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 2100 2400 50  0001 C CNN
F 1 "GND" H 2105 2477 50  0000 C CNN
F 2 "" H 2100 2650 50  0001 C CNN
F 3 "" H 2100 2650 50  0001 C CNN
	1    2100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0AE1D
P 3000 2650
AR Path="/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C0AE1D" Ref="#PWR010"  Part="1" 
AR Path="/620593AE/61C0AE1D" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 3000 2400 50  0001 C CNN
F 1 "GND" H 3005 2477 50  0000 C CNN
F 2 "" H 3000 2650 50  0001 C CNN
F 3 "" H 3000 2650 50  0001 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C0ECF9
P 1600 2600
AR Path="/61B5C5B6/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C03040/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/6202E846/61C0ECF9" Ref="R20"  Part="1" 
AR Path="/620593AE/61C0ECF9" Ref="R29"  Part="1" 
F 0 "R29" H 1530 2646 50  0000 R CNN
F 1 "4.7k" H 1530 2555 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1530 2600 50  0001 C CNN
F 3 "~" H 1600 2600 50  0001 C CNN
F 4 "C25900" H 1600 2600 50  0001 C CNN "JLC"
	1    1600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2450 1800 2450
$Comp
L power:GND #PWR?
U 1 1 61C1051F
P 1600 2750
AR Path="/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C1051F" Ref="#PWR012"  Part="1" 
AR Path="/620593AE/61C1051F" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1600 2500 50  0001 C CNN
F 1 "GND" H 1605 2577 50  0000 C CNN
F 2 "" H 1600 2750 50  0001 C CNN
F 3 "" H 1600 2750 50  0001 C CNN
	1    1600 2750
	1    0    0    -1  
$EndComp
Text HLabel 1000 1150 0    50   Input ~ 0
VDD
Wire Wire Line
	1000 1150 1150 1150
Wire Wire Line
	2100 1650 2100 1150
Text HLabel 1000 2450 0    50   Input ~ 0
PWM
$Comp
L power:GND #PWR?
U 1 1 61C20664
P 3900 2250
AR Path="/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C20664" Ref="#PWR02"  Part="1" 
AR Path="/620593AE/61C20664" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3900 2000 50  0001 C CNN
F 1 "GND" H 3905 2077 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C237A2
P 1250 2450
AR Path="/61B5C5B6/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C03040/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C237A2" Ref="R?"  Part="1" 
AR Path="/6202E846/61C237A2" Ref="R19"  Part="1" 
AR Path="/620593AE/61C237A2" Ref="R28"  Part="1" 
F 0 "R28" V 1043 2450 50  0000 C CNN
F 1 "1k" V 1134 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1180 2450 50  0001 C CNN
F 3 "~" H 1250 2450 50  0001 C CNN
F 4 "C11702" H 1250 2450 50  0001 C CNN "JLC"
	1    1250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 2450 1100 2450
Wire Wire Line
	1400 2450 1600 2450
Connection ~ 1600 2450
$Comp
L power:GND #PWR?
U 1 1 61C2930B
P 4400 2250
AR Path="/61B5C5B6/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C2930B" Ref="#PWR08"  Part="1" 
AR Path="/620593AE/61C2930B" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4400 2000 50  0001 C CNN
F 1 "GND" H 4405 2077 50  0000 C CNN
F 2 "" H 4400 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C29312
P 4400 2100
AR Path="/61B5C5B6/61C29312" Ref="R?"  Part="1" 
AR Path="/61C03040/61C29312" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C29312" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C29312" Ref="R?"  Part="1" 
AR Path="/61C29312" Ref="R?"  Part="1" 
AR Path="/6202E846/61C29312" Ref="R18"  Part="1" 
AR Path="/620593AE/61C29312" Ref="R27"  Part="1" 
F 0 "R27" H 4470 2146 50  0000 L CNN
F 1 "4.7k" H 4470 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4330 2100 50  0001 C CNN
F 3 "~" H 4400 2100 50  0001 C CNN
F 4 "C25900" H 4400 2100 50  0001 C CNN "JLC"
	1    4400 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C29F4A
P 2100 1800
AR Path="/61B5C5B6/61C29F4A" Ref="R?"  Part="1" 
AR Path="/61C03040/61C29F4A" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C29F4A" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C29F4A" Ref="R?"  Part="1" 
AR Path="/61C29F4A" Ref="R?"  Part="1" 
AR Path="/6202E846/61C29F4A" Ref="R1"  Part="1" 
AR Path="/620593AE/61C29F4A" Ref="R23"  Part="1" 
F 0 "R23" H 2170 1846 50  0000 L CNN
F 1 "4.7k" H 2170 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2030 1800 50  0001 C CNN
F 3 "~" H 2100 1800 50  0001 C CNN
F 4 "C25900" H 2100 1800 50  0001 C CNN "JLC"
	1    2100 1800
	1    0    0    -1  
$EndComp
Connection ~ 1150 4200
Text Label 4950 1950 0    50   ~ 0
GATE
Connection ~ 4400 1950
Wire Wire Line
	4400 1950 4950 1950
Text Notes 2250 1050 0    50   ~ 0
BJT: Vce(max) = 160V, hfe>100\nMOSFET: Vgc(max) = 12V
Text Notes 1800 1050 0    50   ~ 0
VDD≤12V
$Comp
L Transistor_BJT:MMBT5551L Q7
U 1 1 61C0A1BB
P 2900 1450
AR Path="/6202E846/61C0A1BB" Ref="Q7"  Part="1" 
AR Path="/620593AE/61C0A1BB" Ref="Q10"  Part="1" 
F 0 "Q10" H 3091 1496 50  0000 L CNN
F 1 "MMBT5551" H 3091 1405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 1375 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 2900 1450 50  0001 L CNN
F 4 "C2145" H 2900 1450 50  0001 C CNN "JLC"
	1    2900 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C5A1AF
P 3450 1950
AR Path="/61B5C5B6/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C03040/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/6202E846/61C5A1AF" Ref="R2"  Part="1" 
AR Path="/620593AE/61C5A1AF" Ref="R24"  Part="1" 
F 0 "R24" V 3657 1950 50  0000 C CNN
F 1 "120" V 3566 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 3380 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
F 4 "C25079" H 3450 1950 50  0001 C CNN "JLC"
	1    3450 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 1150 3000 1150
Wire Wire Line
	3000 1150 3000 1250
Connection ~ 2100 1150
$Comp
L Device:C C?
U 1 1 61C61D09
P 3900 2100
AR Path="/61C61D09" Ref="C?"  Part="1" 
AR Path="/6202E846/61C61D09" Ref="C3"  Part="1" 
AR Path="/620593AE/61C61D09" Ref="C4"  Part="1" 
F 0 "C4" H 3785 2146 50  0000 R CNN
F 1 "100n/50" H 3785 2055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 3938 1950 50  0001 C CNN
F 3 "~" H 3900 2100 50  0001 C CNN
F 4 "C307331" H 3900 2100 50  0001 C CNN "JLC"
	1    3900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1950 4400 1950
$Comp
L Device:Q_PNP_BEC Q9
U 1 1 61C4E023
P 2900 2450
AR Path="/6202E846/61C4E023" Ref="Q9"  Part="1" 
AR Path="/620593AE/61C4E023" Ref="Q12"  Part="1" 
F 0 "Q12" H 3091 2404 50  0000 L CNN
F 1 "MMBT5401" H 3091 2495 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140241_Changjiang-Electronics-Tech--CJ-MMBT5401_C8326.pdf" H 2900 2450 50  0001 C CNN
F 4 "C8326" H 2900 2450 50  0001 C CNN "JLC"
	1    2900 2450
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 1450 2700 1950
$Comp
L Device:R R?
U 1 1 61C7713A
P 2100 2100
AR Path="/61B5C5B6/61C7713A" Ref="R?"  Part="1" 
AR Path="/61C03040/61C7713A" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C7713A" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C7713A" Ref="R?"  Part="1" 
AR Path="/61C7713A" Ref="R?"  Part="1" 
AR Path="/6202E846/61C7713A" Ref="R3"  Part="1" 
AR Path="/620593AE/61C7713A" Ref="R25"  Part="1" 
F 0 "R25" H 2170 2146 50  0000 L CNN
F 1 "4.7k" H 2170 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2030 2100 50  0001 C CNN
F 3 "~" H 2100 2100 50  0001 C CNN
F 4 "C25900" H 2100 2100 50  0001 C CNN "JLC"
	1    2100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2700 1950
Connection ~ 2100 1950
Connection ~ 2700 1950
Wire Wire Line
	2700 1950 2700 2450
Wire Wire Line
	3600 1950 3900 1950
Connection ~ 3900 1950
Wire Wire Line
	3000 2250 3000 1950
Wire Wire Line
	3300 1950 3000 1950
Connection ~ 3000 1950
Wire Wire Line
	3000 1950 3000 1650
$Comp
L Device:C C?
U 1 1 61D142B7
P 1150 1300
AR Path="/61D142B7" Ref="C?"  Part="1" 
AR Path="/61B5C5B6/61D142B7" Ref="C?"  Part="1" 
AR Path="/6202E846/61D142B7" Ref="C5"  Part="1" 
AR Path="/620593AE/61D142B7" Ref="C10"  Part="1" 
F 0 "C10" H 1265 1346 50  0000 L CNN
F 1 "100n/50" H 1265 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1188 1150 50  0001 C CNN
F 3 "~" H 1150 1300 50  0001 C CNN
F 4 "C307331" H 1150 1300 50  0001 C CNN "JLC"
	1    1150 1300
	1    0    0    -1  
$EndComp
Connection ~ 1150 1150
Wire Wire Line
	1150 1150 2100 1150
$Comp
L power:GND #PWR?
U 1 1 61D15BBF
P 1150 1450
AR Path="/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61D15BBF" Ref="#PWR024"  Part="1" 
AR Path="/620593AE/61D15BBF" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1150 1200 50  0001 C CNN
F 1 "GND" H 1155 1277 50  0000 C CNN
F 2 "" H 1150 1450 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
