EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
AR Path="/6203BADE" Ref="Q1"  Part="1" 
AR Path="/6202E846/6203BADE" Ref="Q1"  Part="1" 
AR Path="/620593AE/6203BADE" Ref="Q4"  Part="1" 
F 0 "Q1" H 1555 4246 50  0000 L CNN
F 1 "AO3400A" H 1555 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1550 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 1350 4200 50  0001 L CNN
F 4 "C20917" H 1350 4200 50  0001 C CNN "JLC"
F 5 "X" H 1350 4200 50  0001 C CNN "Spice_Primitive"
F 6 "AO3400" H 1350 4200 50  0001 C CNN "Spice_Model"
F 7 "Y" H 1350 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/AO3400.mod" H 1350 4200 50  0001 C CNN "Spice_Lib_File"
F 9 "3 1 2" H 1350 4200 50  0001 C CNN "Spice_Node_Sequence"
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
AR Path="/6203BAE5" Ref="Q2"  Part="1" 
AR Path="/6202E846/6203BAE5" Ref="Q2"  Part="1" 
AR Path="/620593AE/6203BAE5" Ref="Q5"  Part="1" 
F 0 "Q2" H 2305 4246 50  0000 L CNN
F 1 "AO3400A" H 2305 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2300 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 2100 4200 50  0001 L CNN
F 4 "C20917" H 2100 4200 50  0001 C CNN "JLC"
F 5 "X" H 2100 4200 50  0001 C CNN "Spice_Primitive"
F 6 "AO3400" H 2100 4200 50  0001 C CNN "Spice_Model"
F 7 "Y" H 2100 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/AO3400.mod" H 2100 4200 50  0001 C CNN "Spice_Lib_File"
F 9 "3 1 2" H 2100 4200 50  0001 C CNN "Spice_Node_Sequence"
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
AR Path="/6203BAEC" Ref="Q3"  Part="1" 
AR Path="/6202E846/6203BAEC" Ref="Q3"  Part="1" 
AR Path="/620593AE/6203BAEC" Ref="Q6"  Part="1" 
F 0 "Q3" H 3055 4246 50  0000 L CNN
F 1 "AO3400A" H 3055 4155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3050 4125 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 2850 4200 50  0001 L CNN
F 4 "C20917" H 2850 4200 50  0001 C CNN "JLC"
F 5 "X" H 2850 4200 50  0001 C CNN "Spice_Primitive"
F 6 "AO3400" H 2850 4200 50  0001 C CNN "Spice_Model"
F 7 "Y" H 2850 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/AO3400.mod" H 2850 4200 50  0001 C CNN "Spice_Lib_File"
F 9 "3 1 2" H 2850 4200 50  0001 C CNN "Spice_Node_Sequence"
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
AR Path="/6203BB32" Ref="#PWR014"  Part="1" 
AR Path="/6202E846/6203BB32" Ref="#PWR011"  Part="1" 
AR Path="/620593AE/6203BB32" Ref="#PWR026"  Part="1" 
F 0 "#PWR014" H 1450 4250 50  0001 C CNN
F 1 "GND" H 1455 4327 50  0000 C CNN
F 2 "" H 1450 4500 50  0001 C CNN
F 3 "" H 1450 4500 50  0001 C CNN
	1    1450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4200 1900 4200
Wire Wire Line
	800  4200 1150 4200
$Comp
L Device:Q_NPN_CBE Q8
U 1 1 61C08552
P 3000 2500
AR Path="/6202E846/61C08552" Ref="Q8"  Part="1" 
AR Path="/620593AE/61C08552" Ref="Q11"  Part="1" 
AR Path="/61C08552" Ref="Q11"  Part="1" 
F 0 "Q11" H 3191 2546 50  0000 L CNN
F 1 "MMBT5551" H 3191 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3200 2425 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 3000 2500 50  0001 L CNN
F 4 "C2145" H 3000 2500 50  0001 C CNN "JLC"
F 5 "Q" H 3000 2500 50  0001 C CNN "Spice_Primitive"
F 6 "MMBT5551" H 3000 2500 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3000 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/MMBT5551.spice.txt" H 3000 2500 50  0001 C CNN "Spice_Lib_File"
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61C0AE1D
P 4000 2700
AR Path="/61C0AE1D" Ref="#PWR06"  Part="1" 
AR Path="/61B5C5B6/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0AE1D" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C0AE1D" Ref="#PWR010"  Part="1" 
AR Path="/620593AE/61C0AE1D" Ref="#PWR022"  Part="1" 
F 0 "#PWR06" H 4000 2450 50  0001 C CNN
F 1 "GND" H 4005 2527 50  0000 C CNN
F 2 "" H 4000 2700 50  0001 C CNN
F 3 "" H 4000 2700 50  0001 C CNN
	1    4000 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C0ECF9
P 2600 2650
AR Path="/61B5C5B6/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C03040/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C0ECF9" Ref="R?"  Part="1" 
AR Path="/61C0ECF9" Ref="R6"  Part="1" 
AR Path="/6202E846/61C0ECF9" Ref="R20"  Part="1" 
AR Path="/620593AE/61C0ECF9" Ref="R29"  Part="1" 
F 0 "R6" H 2530 2696 50  0000 R CNN
F 1 "4.7k" H 2530 2605 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2530 2650 50  0001 C CNN
F 3 "~" H 2600 2650 50  0001 C CNN
F 4 "C25900" H 2600 2650 50  0001 C CNN "JLC"
	1    2600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2500 2800 2500
$Comp
L power:GND #PWR07
U 1 1 61C1051F
P 2600 2800
AR Path="/61C1051F" Ref="#PWR07"  Part="1" 
AR Path="/61B5C5B6/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C1051F" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C1051F" Ref="#PWR012"  Part="1" 
AR Path="/620593AE/61C1051F" Ref="#PWR023"  Part="1" 
F 0 "#PWR07" H 2600 2550 50  0001 C CNN
F 1 "GND" H 2605 2627 50  0000 C CNN
F 2 "" H 2600 2800 50  0001 C CNN
F 3 "" H 2600 2800 50  0001 C CNN
	1    2600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1350 3100 1200
Wire Wire Line
	2400 2500 2600 2500
Connection ~ 2600 2500
$Comp
L power:GND #PWR?
U 1 1 61C2930B
P 5750 2300
AR Path="/61B5C5B6/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C2930B" Ref="#PWR?"  Part="1" 
AR Path="/61C2930B" Ref="#PWR04"  Part="1" 
AR Path="/6202E846/61C2930B" Ref="#PWR08"  Part="1" 
AR Path="/620593AE/61C2930B" Ref="#PWR014"  Part="1" 
F 0 "#PWR04" H 5750 2050 50  0001 C CNN
F 1 "GND" H 5755 2127 50  0000 C CNN
F 2 "" H 5750 2300 50  0001 C CNN
F 3 "" H 5750 2300 50  0001 C CNN
	1    5750 2300
	1    0    0    -1  
$EndComp
Connection ~ 1150 4200
Text Label 6300 2000 0    50   ~ 0
GATE
Connection ~ 5750 2000
Wire Wire Line
	5750 2000 6300 2000
$Comp
L Device:Q_NPN_CBE Q7
U 1 1 61C0A1BB
P 3900 1500
AR Path="/6202E846/61C0A1BB" Ref="Q7"  Part="1" 
AR Path="/620593AE/61C0A1BB" Ref="Q10"  Part="1" 
AR Path="/61C0A1BB" Ref="Q10"  Part="1" 
F 0 "Q10" H 4091 1546 50  0000 L CNN
F 1 "MMBT5551" H 4091 1455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 1425 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 3900 1500 50  0001 L CNN
F 4 "C2145" H 3900 1500 50  0001 C CNN "JLC"
F 5 "Q" H 3900 1500 50  0001 C CNN "Spice_Primitive"
F 6 "MMBT5551" H 3900 1500 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3900 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/MMBT5551.spice.txt" H 3900 1500 50  0001 C CNN "Spice_Lib_File"
	1    3900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1200 4000 1200
Wire Wire Line
	4000 1200 4000 1300
Connection ~ 3100 1200
Wire Wire Line
	4000 2300 4000 2000
Wire Wire Line
	4650 2000 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4000 2000 4000 1700
$Comp
L Device:C C1
U 1 1 61D142B7
P 2150 1350
AR Path="/61D142B7" Ref="C1"  Part="1" 
AR Path="/61B5C5B6/61D142B7" Ref="C?"  Part="1" 
AR Path="/6202E846/61D142B7" Ref="C5"  Part="1" 
AR Path="/620593AE/61D142B7" Ref="C10"  Part="1" 
F 0 "C1" H 2265 1396 50  0000 L CNN
F 1 "100n" H 2265 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2188 1200 50  0001 C CNN
F 3 "~" H 2150 1350 50  0001 C CNN
F 4 "C307331" H 2150 1350 50  0001 C CNN "JLC"
	1    2150 1350
	1    0    0    -1  
$EndComp
Connection ~ 2150 1200
Wire Wire Line
	2150 1200 3100 1200
$Comp
L power:GND #PWR01
U 1 1 61D15BBF
P 2150 1500
AR Path="/61D15BBF" Ref="#PWR01"  Part="1" 
AR Path="/61B5C5B6/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61D15BBF" Ref="#PWR024"  Part="1" 
AR Path="/620593AE/61D15BBF" Ref="#PWR025"  Part="1" 
F 0 "#PWR01" H 2150 1250 50  0001 C CNN
F 1 "GND" H 2155 1327 50  0000 C CNN
F 2 "" H 2150 1500 50  0001 C CNN
F 3 "" H 2150 1500 50  0001 C CNN
	1    2150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1200 2150 1200
$Comp
L power:GND #PWR02
U 1 1 61BFF3CF
P 1600 1600
AR Path="/61BFF3CF" Ref="#PWR02"  Part="1" 
AR Path="/61B5C5B6/61BFF3CF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61BFF3CF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61BFF3CF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61BFF3CF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61BFF3CF" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61BFF3CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1600 1350 50  0001 C CNN
F 1 "GND" H 1605 1427 50  0000 C CNN
F 2 "" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VPULSE V2
U 1 1 61C061DD
P 1450 2700
F 0 "V2" H 1580 2791 50  0000 L CNN
F 1 "VCONTROL" H 1580 2700 50  0000 L CNN
F 2 "" H 1450 2700 50  0001 C CNN
F 3 "~" H 1450 2700 50  0001 C CNN
F 4 "Y" H 1450 2700 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1450 2700 50  0001 L CNN "Spice_Primitive"
F 6 "pulse(0 3.3 0 {pwm_edge} {pwm_edge} {(pwm_duty)/pwm_freq-2*pwm_edge} {1/pwm_freq} 0)" H 1580 2609 50  0000 L CNN "Spice_Model"
	1    1450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2500 2100 2500
$Comp
L power:GND #PWR08
U 1 1 61C07D83
P 1450 2900
AR Path="/61C07D83" Ref="#PWR08"  Part="1" 
AR Path="/61B5C5B6/61C07D83" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C07D83" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C07D83" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C07D83" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C07D83" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C07D83" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 1450 2650 50  0001 C CNN
F 1 "GND" H 1455 2727 50  0000 C CNN
F 2 "" H 1450 2900 50  0001 C CNN
F 3 "" H 1450 2900 50  0001 C CNN
	1    1450 2900
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:VDC V3
U 1 1 61C08C0E
P 6200 3900
F 0 "V3" H 6330 3991 50  0000 L CNN
F 1 "VLEDS" H 6330 3900 50  0000 L CNN
F 2 "" H 6200 3900 50  0001 C CNN
F 3 "~" H 6200 3900 50  0001 C CNN
F 4 "Y" H 6200 3900 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 6200 3900 50  0001 L CNN "Spice_Primitive"
F 6 "dc({vled})" H 6330 3809 50  0000 L CNN "Spice_Model"
	1    6200 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0C160
P 6200 4100
AR Path="/61B5C5B6/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C0C160" Ref="#PWR09"  Part="1" 
AR Path="/6202E846/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C0C160" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 6200 3850 50  0001 C CNN
F 1 "GND" H 6205 3927 50  0000 C CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C140FE
P 4850 3850
AR Path="/61B5C5B6/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C03040/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C140FE" Ref="R7"  Part="1" 
AR Path="/6202E846/61C140FE" Ref="R?"  Part="1" 
AR Path="/620593AE/61C140FE" Ref="R?"  Part="1" 
F 0 "R7" H 4920 3896 50  0000 L CNN
F 1 "2.4" H 4920 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4780 3850 50  0001 C CNN
F 3 "~" H 4850 3850 50  0001 C CNN
F 4 "C25900" H 4850 3850 50  0001 C CNN "JLC"
	1    4850 3850
	1    0    0    -1  
$EndComp
Text Notes 4550 1250 0    50   ~ 0
Fixes:\n - Q11 col-resistors act as divider, idiot\n - gate pulldown resistor pulls down too hard?\n - gate RC\n - pwm freq\n - can run off 5v with decent perf (as can the MCU)\n - 
Wire Wire Line
	3700 1500 3700 2000
Connection ~ 3700 2000
Wire Wire Line
	3700 2000 3700 2500
Wire Wire Line
	3100 1650 3100 2000
Text Label 3700 2000 0    50   ~ 0
BASES
Wire Wire Line
	3100 2000 3700 2000
Text Label 4000 2000 0    50   ~ 0
EMITTERS
Text Label 1450 2500 0    50   ~ 0
PULSE
$Comp
L Device:Q_PNP_CBE Q9
U 1 1 61C4E023
P 3900 2500
AR Path="/6202E846/61C4E023" Ref="Q9"  Part="1" 
AR Path="/620593AE/61C4E023" Ref="Q12"  Part="1" 
AR Path="/61C4E023" Ref="Q12"  Part="1" 
F 0 "Q12" H 4091 2454 50  0000 L CNN
F 1 "MMBT5401" H 4091 2545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809140241_Changjiang-Electronics-Tech--CJ-MMBT5401_C8326.pdf" H 3900 2500 50  0001 C CNN
F 4 "C8326" H 3900 2500 50  0001 C CNN "JLC"
F 5 "Q" H 3900 2500 50  0001 C CNN "Spice_Primitive"
F 6 "MMBT5401" H 3900 2500 50  0001 C CNN "Spice_Model"
F 7 "Y" H 3900 2500 50  0001 C CNN "Spice_Netlist_Enabled"
F 8 "spice/MMBT5401.spice.txt" H 3900 2500 50  0001 C CNN "Spice_Lib_File"
	1    3900 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61C29312
P 5750 2150
AR Path="/61B5C5B6/61C29312" Ref="R?"  Part="1" 
AR Path="/61C03040/61C29312" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C29312" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C29312" Ref="R?"  Part="1" 
AR Path="/61C29312" Ref="R4"  Part="1" 
AR Path="/6202E846/61C29312" Ref="R18"  Part="1" 
AR Path="/620593AE/61C29312" Ref="R27"  Part="1" 
F 0 "R4" H 5820 2196 50  0000 L CNN
F 1 "4.7k" H 5820 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5680 2150 50  0001 C CNN
F 3 "~" H 5750 2150 50  0001 C CNN
F 4 "C25900" H 5750 2150 50  0001 C CNN "JLC"
	1    5750 2150
	1    0    0    -1  
$EndComp
Text Notes 1100 6200 0    50   ~ 0
https://www.digikey.com/en/articles/how-new-flicker-recommendations-will-influence-led-lighting-design
$Comp
L power:GND #PWR05
U 1 1 61C42AA9
P 3100 2700
AR Path="/61C42AA9" Ref="#PWR05"  Part="1" 
AR Path="/61B5C5B6/61C42AA9" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C42AA9" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C42AA9" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C42AA9" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61C42AA9" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C42AA9" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 3100 2450 50  0001 C CNN
F 1 "GND" H 3105 2527 50  0000 C CNN
F 2 "" H 3100 2700 50  0001 C CNN
F 3 "" H 3100 2700 50  0001 C CNN
	1    3100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C190AA
P 3100 1500
AR Path="/61B5C5B6/61C190AA" Ref="R?"  Part="1" 
AR Path="/61C03040/61C190AA" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C190AA" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C190AA" Ref="R?"  Part="1" 
AR Path="/61C190AA" Ref="R1"  Part="1" 
AR Path="/6202E846/61C190AA" Ref="R?"  Part="1" 
AR Path="/620593AE/61C190AA" Ref="R?"  Part="1" 
F 0 "R1" H 3170 1546 50  0000 L CNN
F 1 "1k" H 3170 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3030 1500 50  0001 C CNN
F 3 "~" H 3100 1500 50  0001 C CNN
F 4 "C11702" H 3100 1500 50  0001 C CNN "JLC"
	1    3100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3100 2000
Connection ~ 3100 2000
Wire Wire Line
	4950 2000 5100 2000
$Comp
L Device:R R?
U 1 1 61C56208
P 6050 3700
AR Path="/61B5C5B6/61C56208" Ref="R?"  Part="1" 
AR Path="/61C03040/61C56208" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C56208" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C56208" Ref="R?"  Part="1" 
AR Path="/61C56208" Ref="R3"  Part="1" 
AR Path="/6202E846/61C56208" Ref="R?"  Part="1" 
AR Path="/620593AE/61C56208" Ref="R?"  Part="1" 
F 0 "R3" V 5843 3700 50  0000 C CNN
F 1 "0.1" V 5934 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5980 3700 50  0001 C CNN
F 3 "~" H 6050 3700 50  0001 C CNN
F 4 "C25900" H 6050 3700 50  0001 C CNN "JLC"
	1    6050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 3700 5900 3700
$Comp
L Device:R R?
U 1 1 61C237A2
P 2250 2500
AR Path="/61B5C5B6/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C03040/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C237A2" Ref="R?"  Part="1" 
AR Path="/61C237A2" Ref="R5"  Part="1" 
AR Path="/6202E846/61C237A2" Ref="R19"  Part="1" 
AR Path="/620593AE/61C237A2" Ref="R28"  Part="1" 
F 0 "R5" V 2043 2500 50  0000 C CNN
F 1 "4.7k" V 2134 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2180 2500 50  0001 C CNN
F 3 "~" H 2250 2500 50  0001 C CNN
F 4 "C11702" H 2250 2500 50  0001 C CNN "JLC"
	1    2250 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61C5A1AF
P 4800 2000
AR Path="/61B5C5B6/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C03040/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C5A1AF" Ref="R2"  Part="1" 
AR Path="/6202E846/61C5A1AF" Ref="R2"  Part="1" 
AR Path="/620593AE/61C5A1AF" Ref="R24"  Part="1" 
F 0 "R2" V 5007 2000 50  0000 C CNN
F 1 "120" V 4916 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4730 2000 50  0001 C CNN
F 3 "~" H 4800 2000 50  0001 C CNN
F 4 "C25079" H 4800 2000 50  0001 C CNN "JLC"
	1    4800 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 61C5E231
P 5100 2150
AR Path="/61C5E231" Ref="C2"  Part="1" 
AR Path="/61B5C5B6/61C5E231" Ref="C?"  Part="1" 
AR Path="/6202E846/61C5E231" Ref="C?"  Part="1" 
AR Path="/620593AE/61C5E231" Ref="C?"  Part="1" 
F 0 "C2" H 5215 2196 50  0000 L CNN
F 1 "3.3n" H 5215 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5138 2000 50  0001 C CNN
F 3 "~" H 5100 2150 50  0001 C CNN
F 4 "C307331" H 5100 2150 50  0001 C CNN "JLC"
	1    5100 2150
	1    0    0    -1  
$EndComp
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5750 2000
$Comp
L power:GND #PWR?
U 1 1 61C5F00B
P 5100 2300
AR Path="/61B5C5B6/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C5F00B" Ref="#PWR03"  Part="1" 
AR Path="/6202E846/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C5F00B" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 5100 2050 50  0001 C CNN
F 1 "GND" H 5105 2127 50  0000 C CNN
F 2 "" H 5100 2300 50  0001 C CNN
F 3 "" H 5100 2300 50  0001 C CNN
	1    5100 2300
	1    0    0    -1  
$EndComp
Connection ~ 2950 4000
$Comp
L pspice:0 #GND01
U 1 1 61C69336
P 5500 4900
F 0 "#GND01" H 5500 4800 50  0001 C CNN
F 1 "0" H 5500 4989 50  0000 C CNN
F 2 "" H 5500 4900 50  0001 C CNN
F 3 "~" H 5500 4900 50  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C69674
P 5500 4900
AR Path="/61B5C5B6/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C69674" Ref="#PWR010"  Part="1" 
AR Path="/6202E846/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C69674" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 5500 4650 50  0001 C CNN
F 1 "GND" H 5505 4727 50  0000 C CNN
F 2 "" H 5500 4900 50  0001 C CNN
F 3 "" H 5500 4900 50  0001 C CNN
	1    5500 4900
	-1   0    0    1   
$EndComp
$Comp
L Simulation_SPICE:VDC V1
U 1 1 61BFE379
P 1600 1400
F 0 "V1" H 1730 1491 50  0000 L CNN
F 1 "VDRIVER" H 1730 1400 50  0000 L CNN
F 2 "" H 1600 1400 50  0001 C CNN
F 3 "~" H 1600 1400 50  0001 C CNN
F 4 "Y" H 1600 1400 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1600 1400 50  0001 L CNN "Spice_Primitive"
F 6 "dc(5)" H 1730 1309 50  0000 L CNN "Spice_Model"
	1    1600 1400
	1    0    0    -1  
$EndComp
Text Notes 11800 10950 0    50   ~ 0
.param temp_a=50\n.param n_fets=3\n\n.param pwm_freq=1440\n.param pwm_duty=0.15\n.param pwm_edge=10u\n\n.param vled=24\n\n.csparam temp_a={temp_a}\n.csparam n_fets={n_fets}\n.csparam pwm_freq={pwm_freq}\n.csparam pwm_duty={pwm_duty}\n.csparam pwm_edge={pwm_edge}\n.csparam vled={vled}\n\n.options savecurrents\n.option temp='temp_a'\n.tran 1u {3/pwm_freq}\n\n.control\n\nlet temp_a=$&temp_a\nlet n_fets=$&n_fets\nlet pwm_freq=$&pwm_freq\nlet pwm_duty=$&pwm_duty\nlet pwm_edge=$&pwm_edge\nlet vled=$&vled\n\nlet id=@R7[i]\nlet vd=v("/DRAIN")\nlet pds=vd*id\n\nmeas TRAN id_min MIN id\nmeas TRAN id_max MAX id\nlet idl=0.1*(id_max-id_min)+id_min\nlet idh=0.9*(id_max-id_min)+id_min\n\nmeas TRAN id_rise_time TRIG id VAL=idl RISE=1 TARG id VAL=idh RISE=1\nmeas TRAN id_fall_time TRIG id VAL=idh FALL=1 TARG id VAL=idl FALL=1\n\nmeas TRAN id_rise_from WHEN id=idl RISE=1\nmeas TRAN id_rise_to WHEN id=idh RISE=1 td=id_rise_from\nmeas TRAN id_fall_from WHEN id=idh FALL=1 td=id_rise_to\nmeas TRAN id_fall_to WHEN id=idl FALL=1 td=id_fall_from\nmeas TRAN id_rise_from2 WHEN id=idl RISE=2 td=id_fall_to\n\nmeas tran wds_rise integ pds from=id_rise_from to=id_rise_to\nmeas tran wds_high integ pds from=id_rise_to to=id_fall_from\nmeas tran wds_fall integ pds from=id_fall_from to=id_fall_to\nmeas tran wds_low integ pds from=id_fall_to to=id_rise_from2\nmeas tran wds_all integ pds from=id_rise_from to=id_rise_from2\n\nlet pds_rise=wds_rise/(id_rise_to-id_rise_from)\nlet pds_high=wds_high/(id_fall_from-id_rise_to)\nlet pds_fall=wds_fall/(id_fall_to-id_fall_from)\nlet pds_low=wds_low/(id_rise_from2-id_fall_to)\nlet pds_all=wds_all/(id_rise_from2-id_rise_from)\n\nlet switching_loss=(wds_rise+wds_fall)/(wds_rise+wds_fall+wds_high+wds_low)\nlet total_loss=mean(vd*id) / mean((vled-vd)*id)\n\nlet rds=vd/id\nmeas tran rds_on avg rds from=id_rise_to to=id_fall_from\nmeas tran rds_off avg rds from=id_fall_to to=id_rise_from2\n\nlet tja=125\nlet temp_ja=tja*pds_all/n_fets\nlet temp_j=temp_a+temp_ja \n\necho .\necho RESULTS:\necho .\n\necho PWM configuration\nprint pwm_freq\nprint pwm_duty\nprint pwm_edge\necho .\n\necho Number of parallel'd transistors\nprint n_fets\necho .\n\necho Power lost in transistors during rise/high/fall/low\nprint pds_rise\nprint pds_high\nprint pds_fall\nprint pds_low\nprint pds_all\necho .\n\necho Effective Rds(on/off)\nprint rds_on\nprint rds_off\necho .\n\necho Actual Rds(on/off)\nprint rds_on*n_fets\nprint rds_off*n_fets\necho .\n\necho Switching loss as fraction of loss in transistors\nprint switching_loss\necho .\n\necho Loss in transistors as fraction of total power (lost + delivered to load)\nprint total_loss\necho .\n\necho Drain current rise/fall times\nprint id_rise_time\nprint id_fall_time\necho .\n\necho Drain current rise/fall root-frequencies\nprint (1/id_rise_time)\nprint (1/id_fall_time)\necho .\n\necho Temperatures\nprint temp_ja\nprint temp_a\nprint temp_j\necho .\n\n.endc
Text Notes 4550 4200 0    50   ~ 0
10A@24V = 2.4Ω effective load
Wire Wire Line
	2950 4000 4850 4000
$EndSCHEMATC
