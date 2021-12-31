EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L power:GND #PWR?
U 1 1 61C0AE1D
P 3000 2650
AR Path="/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C0AE1D" Ref="#PWR031"  Part="1" 
AR Path="/620593AE/61C0AE1D" Ref="#PWR037"  Part="1" 
F 0 "#PWR031" H 3000 2400 50  0001 C CNN
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
AR Path="/6202E846/61C0ECF9" Ref="R12"  Part="1" 
AR Path="/620593AE/61C0ECF9" Ref="R14"  Part="1" 
F 0 "R12" H 1530 2646 50  0000 R CNN
F 1 "4.7k" H 1530 2555 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1530 2600 50  0001 C CNN
F 3 "~" H 1600 2600 50  0001 C CNN
F 4 "C25900" H 1600 2600 50  0001 C CNN "JLC"
	1    1600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1051F
P 1600 2750
AR Path="/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C1051F" Ref="#PWR032"  Part="1" 
AR Path="/620593AE/61C1051F" Ref="#PWR038"  Part="1" 
F 0 "#PWR032" H 1600 2500 50  0001 C CNN
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
Text HLabel 1000 2450 0    50   Input ~ 0
PWM
$Comp
L Transistor_BJT:MMBT5551L Q1
U 1 1 61C0A1BB
P 2900 1450
AR Path="/6202E846/61C0A1BB" Ref="Q1"  Part="1" 
AR Path="/620593AE/61C0A1BB" Ref="Q5"  Part="1" 
F 0 "Q1" H 3091 1496 50  0000 L CNN
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
AR Path="/6202E846/61C5A1AF" Ref="R11"  Part="1" 
AR Path="/620593AE/61C5A1AF" Ref="R13"  Part="1" 
F 0 "R11" V 3657 1950 50  0000 C CNN
F 1 "100" V 3566 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 3380 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
F 4 "C25076" H 3450 1950 50  0001 C CNN "JLC"
	1    3450 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 1150 3000 1250
$Comp
L Device:Q_PNP_BEC Q4
U 1 1 61C4E023
P 2900 2450
AR Path="/6202E846/61C4E023" Ref="Q4"  Part="1" 
AR Path="/620593AE/61C4E023" Ref="Q8"  Part="1" 
F 0 "Q4" H 3091 2404 50  0000 L CNN
F 1 "MMBT5401" H 3091 2495 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140241_Changjiang-Electronics-Tech--CJ-MMBT5401_C8326.pdf" H 2900 2450 50  0001 C CNN
F 4 "C8326" H 2900 2450 50  0001 C CNN "JLC"
	1    2900 2450
	1    0    0    1   
$EndComp
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
AR Path="/6202E846/61D142B7" Ref="C10"  Part="1" 
AR Path="/620593AE/61D142B7" Ref="C12"  Part="1" 
F 0 "C10" H 1265 1346 50  0000 L CNN
F 1 "100n" H 1265 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1188 1150 50  0001 C CNN
F 3 "~" H 1150 1300 50  0001 C CNN
F 4 "C1525" H 1150 1300 50  0001 C CNN "JLC"
	1    1150 1300
	1    0    0    -1  
$EndComp
Connection ~ 1150 1150
$Comp
L power:GND #PWR?
U 1 1 61D15BBF
P 1150 1450
AR Path="/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61D15BBF" Ref="#PWR027"  Part="1" 
AR Path="/620593AE/61D15BBF" Ref="#PWR033"  Part="1" 
F 0 "#PWR027" H 1150 1200 50  0001 C CNN
F 1 "GND" H 1155 1277 50  0000 C CNN
F 2 "" H 1150 1450 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1150 3000 1150
Wire Wire Line
	2700 1450 2700 1950
Wire Wire Line
	1000 2450 1600 2450
Wire Wire Line
	1600 2450 1600 1950
Wire Wire Line
	1600 1950 2700 1950
Connection ~ 1600 2450
Connection ~ 2700 1950
Wire Wire Line
	2700 1950 2700 2450
Text Notes 5050 2100 2    50   ~ 0
Cg < 10nF
Wire Wire Line
	4150 1950 4900 1950
Wire Wire Line
	5200 1750 6350 1750
$Comp
L mark:SiS402DN Q2
U 1 1 622D62B8
P 5100 1950
AR Path="/6202E846/622D62B8" Ref="Q2"  Part="1" 
AR Path="/620593AE/622D62B8" Ref="Q6"  Part="1" 
F 0 "Q2" H 5304 1996 50  0000 L CNN
F 1 "SiS402DN" H 5304 1905 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 5100 2450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809301517_Vishay-Intertech-SIS402DN-T1-GE3_C15791.pdf" H 5100 1950 50  0001 C CNN
F 4 "C15791" H 5100 1950 50  0001 C CNN "JLC"
	1    5100 1950
	1    0    0    -1  
$EndComp
Text HLabel 7250 1750 2    50   UnSpc ~ 0
LOW_SIDE
$Comp
L power:GND #PWR?
U 1 1 6203BB32
P 5200 2150
AR Path="/61B5C5B6/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6203BB32" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6203BB32" Ref="#PWR028"  Part="1" 
AR Path="/620593AE/6203BB32" Ref="#PWR034"  Part="1" 
F 0 "#PWR028" H 5200 1900 50  0001 C CNN
F 1 "GND" H 5205 1977 50  0000 C CNN
F 2 "" H 5200 2150 50  0001 C CNN
F 3 "" H 5200 2150 50  0001 C CNN
	1    5200 2150
	1    0    0    -1  
$EndComp
Text Label 5200 1750 0    50   ~ 0
DRAIN
Text Label 4900 1950 2    50   ~ 0
GATE
Connection ~ 4150 1950
Wire Wire Line
	3600 1950 4150 1950
$Comp
L Device:C C?
U 1 1 61C61D09
P 4150 2100
AR Path="/61C61D09" Ref="C?"  Part="1" 
AR Path="/6202E846/61C61D09" Ref="C11"  Part="1" 
AR Path="/620593AE/61C61D09" Ref="C13"  Part="1" 
F 0 "C11" H 4035 2146 50  0000 R CNN
F 1 "100n" H 4035 2055 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 4188 1950 50  0001 C CNN
F 3 "~" H 4150 2100 50  0001 C CNN
F 4 "C1525" H 4150 2100 50  0001 C CNN "JLC"
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C20664
P 4150 2250
AR Path="/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61B5C5B6/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C20664" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C20664" Ref="#PWR030"  Part="1" 
AR Path="/620593AE/61C20664" Ref="#PWR036"  Part="1" 
F 0 "#PWR030" H 4150 2000 50  0001 C CNN
F 1 "GND" H 4155 2077 50  0000 C CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
Text Notes 5000 2700 0    50   ~ 0
Could just use 3x AO3400 per-channel for a fraction of the cost (also "basic part" on JLC).\n5A per mosfet.\nMuch higher Rds(on) though 32mΩ vs 8mΩ.
$Comp
L mark:SiS402DN Q3
U 1 1 6236D64F
P 6250 1950
AR Path="/6202E846/6236D64F" Ref="Q3"  Part="1" 
AR Path="/620593AE/6236D64F" Ref="Q7"  Part="1" 
F 0 "Q3" H 6454 1996 50  0000 L CNN
F 1 "SiS402DN" H 6454 1905 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Single" H 6250 2450 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809301517_Vishay-Intertech-SIS402DN-T1-GE3_C15791.pdf" H 6250 1950 50  0001 C CNN
F 4 "C15791" H 6250 1950 50  0001 C CNN "JLC"
	1    6250 1950
	1    0    0    -1  
$EndComp
Connection ~ 6350 1750
Wire Wire Line
	6350 1750 7250 1750
Text Label 6050 1950 2    50   ~ 0
GATE
$Comp
L power:GND #PWR?
U 1 1 6236E79F
P 6350 2150
AR Path="/61B5C5B6/6236E79F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/6236E79F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/6236E79F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/6236E79F" Ref="#PWR?"  Part="1" 
AR Path="/6236E79F" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/6236E79F" Ref="#PWR029"  Part="1" 
AR Path="/620593AE/6236E79F" Ref="#PWR035"  Part="1" 
F 0 "#PWR029" H 6350 1900 50  0001 C CNN
F 1 "GND" H 6355 1977 50  0000 C CNN
F 2 "" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
