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
L Driver_FET:MCP1416 U?
U 1 1 6203BAD0
P 3550 1200
AR Path="/61B5C5B6/6203BAD0" Ref="U?"  Part="1" 
AR Path="/61C03040/6203BAD0" Ref="U?"  Part="1" 
AR Path="/61C031A1/6203BAD0" Ref="U?"  Part="1" 
AR Path="/61C031A3/6203BAD0" Ref="U?"  Part="1" 
AR Path="/6203BAD0" Ref="U?"  Part="1" 
AR Path="/6202E846/6203BAD0" Ref="U2"  Part="1" 
AR Path="/620593AE/6203BAD0" Ref="U5"  Part="1" 
F 0 "U2" H 3600 1681 50  0000 C CNN
F 1 "MCP1416" H 3600 1590 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3550 800 50  0001 C CIN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/20002092G.pdf" H 3350 1450 50  0001 C CNN
F 4 "C83775" H 3550 1200 50  0001 C CNN "JLC"
	1    3550 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6203BAD6
P 3550 1500
AR Path="/61B5C5B6/6203BAD6" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BAD6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BAD6" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BAD6" Ref="#PWR?"  Part="1" 
AR Path="/6203BAD6" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BAD6" Ref="#PWR010"  Part="1" 
AR Path="/620593AE/6203BAD6" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 3550 1250 50  0001 C CNN
F 1 "GND" H 3555 1327 50  0000 C CNN
F 2 "" H 3550 1500 50  0001 C CNN
F 3 "" H 3550 1500 50  0001 C CNN
	1    3550 1500
	1    0    0    -1  
$EndComp
Text Notes 750  750  0    50   ~ 0
Max 18Vdd
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 6203BADE
P 5350 1200
AR Path="/61B5C5B6/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BADE" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BADE" Ref="Q?"  Part="1" 
AR Path="/6203BADE" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BADE" Ref="Q1"  Part="1" 
AR Path="/620593AE/6203BADE" Ref="Q4"  Part="1" 
F 0 "Q1" H 5555 1246 50  0000 L CNN
F 1 "AO3400A" H 5555 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 5350 1200 50  0001 L CNN
F 4 "C20917" H 5350 1200 50  0001 C CNN "JLC"
	1    5350 1200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 6203BAE5
P 6100 1200
AR Path="/61B5C5B6/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/6203BAE5" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BAE5" Ref="Q2"  Part="1" 
AR Path="/620593AE/6203BAE5" Ref="Q5"  Part="1" 
F 0 "Q2" H 6305 1246 50  0000 L CNN
F 1 "AO3400A" H 6305 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6300 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 6100 1200 50  0001 L CNN
F 4 "C20917" H 6100 1200 50  0001 C CNN "JLC"
	1    6100 1200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 6203BAEC
P 6850 1200
AR Path="/61B5C5B6/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C03040/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C031A1/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/61C031A3/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/6203BAEC" Ref="Q?"  Part="1" 
AR Path="/6202E846/6203BAEC" Ref="Q3"  Part="1" 
AR Path="/620593AE/6203BAEC" Ref="Q6"  Part="1" 
F 0 "Q3" H 7055 1246 50  0000 L CNN
F 1 "AO3400A" H 7055 1155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 1125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 6850 1200 50  0001 L CNN
F 4 "C20917" H 6850 1200 50  0001 C CNN "JLC"
	1    6850 1200
	1    0    0    -1  
$EndComp
Connection ~ 5900 1200
Wire Wire Line
	6650 1200 5900 1200
Wire Wire Line
	5450 1400 6200 1400
Connection ~ 6200 1400
Wire Wire Line
	6200 1400 6950 1400
Wire Wire Line
	5450 1500 5450 1400
Connection ~ 5450 1400
Connection ~ 6200 1000
Wire Wire Line
	6200 1000 5450 1000
Wire Wire Line
	6950 1000 6200 1000
$Comp
L Device:C C?
U 1 1 6203BAFD
P 1150 1050
AR Path="/6203BAFD" Ref="C?"  Part="1" 
AR Path="/61B5C5B6/6203BAFD" Ref="C?"  Part="1" 
AR Path="/61C03040/6203BAFD" Ref="C?"  Part="1" 
AR Path="/61C031A1/6203BAFD" Ref="C?"  Part="1" 
AR Path="/61C031A3/6203BAFD" Ref="C?"  Part="1" 
AR Path="/6202E846/6203BAFD" Ref="C3"  Part="1" 
AR Path="/620593AE/6203BAFD" Ref="C10"  Part="1" 
F 0 "C3" H 1265 1096 50  0000 L CNN
F 1 "1u/50" H 1265 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 900 50  0001 C CNN
F 3 "~" H 1150 1050 50  0001 C CNN
F 4 "C15849" H 1150 1050 50  0001 C CNN "JLC"
	1    1150 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6203BB03
P 1150 1200
AR Path="/6203BB03" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/6203BB03" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB03" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB03" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB03" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB03" Ref="#PWR02"  Part="1" 
AR Path="/620593AE/6203BB03" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 1150 950 50  0001 C CNN
F 1 "GND" H 1155 1027 50  0000 C CNN
F 2 "" H 1150 1200 50  0001 C CNN
F 3 "" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6203BB0A
P 1650 1050
AR Path="/6203BB0A" Ref="C?"  Part="1" 
AR Path="/61B5C5B6/6203BB0A" Ref="C?"  Part="1" 
AR Path="/61C03040/6203BB0A" Ref="C?"  Part="1" 
AR Path="/61C031A1/6203BB0A" Ref="C?"  Part="1" 
AR Path="/61C031A3/6203BB0A" Ref="C?"  Part="1" 
AR Path="/6202E846/6203BB0A" Ref="C4"  Part="1" 
AR Path="/620593AE/6203BB0A" Ref="C11"  Part="1" 
F 0 "C4" H 1765 1096 50  0000 L CNN
F 1 "100n/50" H 1765 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1688 900 50  0001 C CNN
F 3 "~" H 1650 1050 50  0001 C CNN
F 4 "C307331" H 1650 1050 50  0001 C CNN "JLC"
	1    1650 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6203BB10
P 1650 1200
AR Path="/6203BB10" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/6203BB10" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB10" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB10" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB10" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB10" Ref="#PWR08"  Part="1" 
AR Path="/620593AE/6203BB10" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1650 950 50  0001 C CNN
F 1 "GND" H 1655 1027 50  0000 C CNN
F 2 "" H 1650 1200 50  0001 C CNN
F 3 "" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 900  1650 900 
Connection ~ 1650 900 
$Comp
L Device:R R?
U 1 1 6203BB1F
P 2950 1350
AR Path="/61B5C5B6/6203BB1F" Ref="R?"  Part="1" 
AR Path="/61C03040/6203BB1F" Ref="R?"  Part="1" 
AR Path="/61C031A1/6203BB1F" Ref="R?"  Part="1" 
AR Path="/61C031A3/6203BB1F" Ref="R?"  Part="1" 
AR Path="/6203BB1F" Ref="R?"  Part="1" 
AR Path="/6202E846/6203BB1F" Ref="R2"  Part="1" 
AR Path="/620593AE/6203BB1F" Ref="R18"  Part="1" 
F 0 "R2" H 3020 1396 50  0000 L CNN
F 1 "4.7k" H 3020 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2880 1350 50  0001 C CNN
F 3 "~" H 2950 1350 50  0001 C CNN
F 4 "C25900" H 2950 1350 50  0001 C CNN "JLC"
	1    2950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1200 2950 1200
Connection ~ 2950 1200
Wire Wire Line
	2950 1200 3250 1200
$Comp
L power:GND #PWR?
U 1 1 6203BB28
P 2950 1500
AR Path="/61B5C5B6/6203BB28" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB28" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB28" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB28" Ref="#PWR?"  Part="1" 
AR Path="/6203BB28" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB28" Ref="#PWR09"  Part="1" 
AR Path="/620593AE/6203BB28" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 2950 1250 50  0001 C CNN
F 1 "GND" H 2955 1327 50  0000 C CNN
F 2 "" H 2950 1500 50  0001 C CNN
F 3 "" H 2950 1500 50  0001 C CNN
	1    2950 1500
	1    0    0    -1  
$EndComp
Text Label 7200 1200 0    50   ~ 0
GATE
Text Label 7200 1000 0    50   ~ 0
DRAIN
Wire Wire Line
	950  900  1150 900 
Connection ~ 1150 900 
$Comp
L power:GND #PWR?
U 1 1 6203BB32
P 5450 1500
AR Path="/61B5C5B6/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB32" Ref="#PWR011"  Part="1" 
AR Path="/620593AE/6203BB32" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 5450 1250 50  0001 C CNN
F 1 "GND" H 5455 1327 50  0000 C CNN
F 2 "" H 5450 1500 50  0001 C CNN
F 3 "" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6203BB39
P 4800 1450
AR Path="/6203BB39" Ref="C?"  Part="1" 
AR Path="/6202E846/6203BB39" Ref="C5"  Part="1" 
AR Path="/620593AE/6203BB39" Ref="C12"  Part="1" 
F 0 "C5" H 4685 1496 50  0000 R CNN
F 1 "100n/50" H 4685 1405 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 4838 1300 50  0001 C CNN
F 3 "~" H 4800 1450 50  0001 C CNN
F 4 "C307331" H 4800 1450 50  0001 C CNN "JLC"
	1    4800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1200 4800 1200
Wire Wire Line
	4800 1300 4800 1200
$Comp
L power:GND #PWR?
U 1 1 6203BB41
P 4800 1600
AR Path="/61B5C5B6/6203BB41" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB41" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB41" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB41" Ref="#PWR?"  Part="1" 
AR Path="/6203BB41" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB41" Ref="#PWR012"  Part="1" 
AR Path="/620593AE/6203BB41" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 4800 1350 50  0001 C CNN
F 1 "GND" H 4805 1427 50  0000 C CNN
F 2 "" H 4800 1600 50  0001 C CNN
F 3 "" H 4800 1600 50  0001 C CNN
	1    4800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1200 5900 1200
Wire Wire Line
	4800 1200 5100 1200
Connection ~ 4800 1200
Connection ~ 5150 1200
Wire Wire Line
	1650 900  3550 900 
Wire Wire Line
	4400 1200 3950 1200
Text Label 4000 1200 0    50   ~ 0
GATE_DRV
Wire Wire Line
	5100 1300 5100 1200
Connection ~ 5100 1200
Wire Wire Line
	5100 1200 5150 1200
$Comp
L power:GND #PWR?
U 1 1 6203BB58
P 5100 1600
AR Path="/61B5C5B6/6203BB58" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB58" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB58" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB58" Ref="#PWR?"  Part="1" 
AR Path="/6203BB58" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB58" Ref="#PWR013"  Part="1" 
AR Path="/620593AE/6203BB58" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5100 1350 50  0001 C CNN
F 1 "GND" H 5105 1427 50  0000 C CNN
F 2 "" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0001 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
Text Notes 4000 2650 0    50   ~ 0
C5/R2 can be replaced as needed for changing edge\n\nR2/C5 = 120Ω/100nF for fc=13.3kHz\n\nSee simulation PNGs for waveform\n\nRecommend driving with PWM frequency of 300-500Hz,\nideally with factors: (24/30/)72/120, i.e. 360Hz or 480Hz.
Wire Wire Line
	7200 1200 6650 1200
Connection ~ 6650 1200
Connection ~ 6950 1000
Text HLabel 950  900  0    50   Input ~ 0
VDD
Text HLabel 2650 1200 0    50   Input ~ 0
PWM
Text HLabel 10400 1000 2    50   UnSpc ~ 0
LOW_SIDE
$Comp
L Device:R R?
U 1 1 621828B0
P 4550 1200
AR Path="/61B5C5B6/621828B0" Ref="R?"  Part="1" 
AR Path="/61C03040/621828B0" Ref="R?"  Part="1" 
AR Path="/61C031A1/621828B0" Ref="R?"  Part="1" 
AR Path="/61C031A3/621828B0" Ref="R?"  Part="1" 
AR Path="/621828B0" Ref="R?"  Part="1" 
AR Path="/6202E846/621828B0" Ref="R1"  Part="1" 
AR Path="/620593AE/621828B0" Ref="R17"  Part="1" 
F 0 "R1" V 4343 1200 50  0000 C CNN
F 1 "120" V 4434 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4480 1200 50  0001 C CNN
F 3 "~" H 4550 1200 50  0001 C CNN
F 4 "C25079" H 4550 1200 50  0001 C CNN "JLC"
	1    4550 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62183163
P 5100 1450
AR Path="/61B5C5B6/62183163" Ref="R?"  Part="1" 
AR Path="/61C03040/62183163" Ref="R?"  Part="1" 
AR Path="/61C031A1/62183163" Ref="R?"  Part="1" 
AR Path="/61C031A3/62183163" Ref="R?"  Part="1" 
AR Path="/62183163" Ref="R?"  Part="1" 
AR Path="/6202E846/62183163" Ref="R3"  Part="1" 
AR Path="/620593AE/62183163" Ref="R19"  Part="1" 
F 0 "R3" H 5170 1496 50  0000 L CNN
F 1 "4.7k" H 5170 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5030 1450 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
F 4 "C25900" H 5100 1450 50  0001 C CNN "JLC"
	1    5100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 621CD29D
P 7900 1150
AR Path="/621CD29D" Ref="C?"  Part="1" 
AR Path="/6202E846/621CD29D" Ref="C13"  Part="1" 
AR Path="/620593AE/621CD29D" Ref="C17"  Part="1" 
F 0 "C13" H 8015 1196 50  0000 L CNN
F 1 "100n/50" H 8015 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 7938 1000 50  0001 C CNN
F 3 "~" H 7900 1150 50  0001 C CNN
F 4 "C307331" H 7900 1150 50  0001 C CNN "JLC"
	1    7900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621CE160
P 7900 1300
AR Path="/61B5C5B6/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/621CE160" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621CE160" Ref="#PWR029"  Part="1" 
AR Path="/620593AE/621CE160" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 7900 1050 50  0001 C CNN
F 1 "GND" H 7905 1127 50  0000 C CNN
F 2 "" H 7900 1300 50  0001 C CNN
F 3 "" H 7900 1300 50  0001 C CNN
	1    7900 1300
	1    0    0    -1  
$EndComp
Text Notes 7750 1850 0    50   ~ 0
\n\nAssuming 1A @ 12V (12Ω effective load), fc=32kHz\n\nAssuming 5A @ 24V (4.8Ω effective load), fc=80kHz
Wire Wire Line
	6950 1000 7900 1000
Connection ~ 7900 1000
Wire Wire Line
	7900 1000 8500 1000
$Comp
L Device:C C?
U 1 1 621D0FB7
P 8500 1150
AR Path="/621D0FB7" Ref="C?"  Part="1" 
AR Path="/6202E846/621D0FB7" Ref="C14"  Part="1" 
AR Path="/620593AE/621D0FB7" Ref="C18"  Part="1" 
F 0 "C14" H 8615 1196 50  0000 L CNN
F 1 "100n/50" H 8615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 8538 1000 50  0001 C CNN
F 3 "~" H 8500 1150 50  0001 C CNN
F 4 "C307331" H 8500 1150 50  0001 C CNN "JLC"
	1    8500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D0FBD
P 8500 1300
AR Path="/61B5C5B6/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/621D0FBD" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D0FBD" Ref="#PWR030"  Part="1" 
AR Path="/620593AE/621D0FBD" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 8500 1050 50  0001 C CNN
F 1 "GND" H 8505 1127 50  0000 C CNN
F 2 "" H 8500 1300 50  0001 C CNN
F 3 "" H 8500 1300 50  0001 C CNN
	1    8500 1300
	1    0    0    -1  
$EndComp
Connection ~ 8500 1000
Wire Wire Line
	8500 1000 9100 1000
$Comp
L Device:C C?
U 1 1 621D2370
P 9100 1150
AR Path="/621D2370" Ref="C?"  Part="1" 
AR Path="/6202E846/621D2370" Ref="C15"  Part="1" 
AR Path="/620593AE/621D2370" Ref="C19"  Part="1" 
F 0 "C15" H 9215 1196 50  0000 L CNN
F 1 "100n/50" H 9215 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 9138 1000 50  0001 C CNN
F 3 "~" H 9100 1150 50  0001 C CNN
F 4 "C307331" H 9100 1150 50  0001 C CNN "JLC"
	1    9100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D2376
P 9100 1300
AR Path="/61B5C5B6/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/621D2376" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D2376" Ref="#PWR031"  Part="1" 
AR Path="/620593AE/621D2376" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 9100 1050 50  0001 C CNN
F 1 "GND" H 9105 1127 50  0000 C CNN
F 2 "" H 9100 1300 50  0001 C CNN
F 3 "" H 9100 1300 50  0001 C CNN
	1    9100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 621D2EC9
P 9700 1150
AR Path="/621D2EC9" Ref="C?"  Part="1" 
AR Path="/6202E846/621D2EC9" Ref="C16"  Part="1" 
AR Path="/620593AE/621D2EC9" Ref="C20"  Part="1" 
F 0 "C16" H 9815 1196 50  0000 L CNN
F 1 "100n/50" H 9815 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 9738 1000 50  0001 C CNN
F 3 "~" H 9700 1150 50  0001 C CNN
F 4 "C307331" H 9700 1150 50  0001 C CNN "JLC"
	1    9700 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621D2ECF
P 9700 1300
AR Path="/61B5C5B6/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/621D2ECF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/621D2ECF" Ref="#PWR032"  Part="1" 
AR Path="/620593AE/621D2ECF" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 9700 1050 50  0001 C CNN
F 1 "GND" H 9705 1127 50  0000 C CNN
F 2 "" H 9700 1300 50  0001 C CNN
F 3 "" H 9700 1300 50  0001 C CNN
	1    9700 1300
	1    0    0    -1  
$EndComp
Connection ~ 9100 1000
Wire Wire Line
	9100 1000 9700 1000
Connection ~ 9700 1000
Wire Wire Line
	9700 1000 10400 1000
$EndSCHEMATC
