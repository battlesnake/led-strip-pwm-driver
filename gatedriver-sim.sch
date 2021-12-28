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
F 1 "NTMS4807" H 1555 4155 50  0000 L CNN
F 2 "" H 1550 4125 50  0001 L CIN
F 3 "" H 1350 4200 50  0001 L CNN
F 4 "X" H 1350 4200 50  0001 C CNN "Spice_Primitive"
F 5 "ntms4807nr2g" H 1350 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1350 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "spice/NTMS4807NR2G.LIB" H 1350 4200 50  0001 C CNN "Spice_Lib_File"
F 8 "3 1 2" H 1350 4200 50  0001 C CNN "Spice_Node_Sequence"
	1    1350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4500 1450 4400
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
	800  4200 1150 4200
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
Text Label 6750 2000 0    50   ~ 0
GATE
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
	4000 2300 4000 2000
Wire Wire Line
	4450 2000 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4000 2000 4000 1700
$Comp
L Device:C C1
U 1 1 61D142B7
P 3250 1350
AR Path="/61D142B7" Ref="C1"  Part="1" 
AR Path="/61B5C5B6/61D142B7" Ref="C?"  Part="1" 
AR Path="/6202E846/61D142B7" Ref="C5"  Part="1" 
AR Path="/620593AE/61D142B7" Ref="C10"  Part="1" 
F 0 "C1" H 3365 1396 50  0000 L CNN
F 1 "100n" H 3365 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3288 1200 50  0001 C CNN
F 3 "~" H 3250 1350 50  0001 C CNN
F 4 "C307331" H 3250 1350 50  0001 C CNN "JLC"
	1    3250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61D15BBF
P 3250 1500
AR Path="/61D15BBF" Ref="#PWR01"  Part="1" 
AR Path="/61B5C5B6/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61D15BBF" Ref="#PWR?"  Part="1" 
AR Path="/6202E846/61D15BBF" Ref="#PWR024"  Part="1" 
AR Path="/620593AE/61D15BBF" Ref="#PWR025"  Part="1" 
F 0 "#PWR01" H 3250 1250 50  0001 C CNN
F 1 "GND" H 3255 1327 50  0000 C CNN
F 2 "" H 3250 1500 50  0001 C CNN
F 3 "" H 3250 1500 50  0001 C CNN
	1    3250 1500
	1    0    0    -1  
$EndComp
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
P 7950 3900
F 0 "V3" H 8080 3991 50  0000 L CNN
F 1 "VLEDS" H 8080 3900 50  0000 L CNN
F 2 "" H 7950 3900 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
F 4 "Y" H 7950 3900 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 7950 3900 50  0001 L CNN "Spice_Primitive"
F 6 "dc({vled})" H 8080 3809 50  0000 L CNN "Spice_Model"
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C0C160
P 7950 4100
AR Path="/61B5C5B6/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/61C0C160" Ref="#PWR09"  Part="1" 
AR Path="/6202E846/61C0C160" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C0C160" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 7950 3850 50  0001 C CNN
F 1 "GND" H 7955 3927 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C140FE
P 6600 3850
AR Path="/61B5C5B6/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C03040/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C140FE" Ref="R?"  Part="1" 
AR Path="/61C140FE" Ref="R7"  Part="1" 
AR Path="/6202E846/61C140FE" Ref="R?"  Part="1" 
AR Path="/620593AE/61C140FE" Ref="R?"  Part="1" 
F 0 "R7" H 6670 3896 50  0000 L CNN
F 1 "{vled/iled}" H 6670 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6530 3850 50  0001 C CNN
F 3 "~" H 6600 3850 50  0001 C CNN
F 4 "C25900" H 6600 3850 50  0001 C CNN "JLC"
	1    6600 3850
	1    0    0    -1  
$EndComp
Text Label 3700 2000 0    50   ~ 0
BASES
Text Label 4000 2000 0    50   ~ 0
EMITTERS
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
Text Notes 1100 6200 0    50   ~ 0
https://www.digikey.com/en/articles/how-new-flicker-recommendations-will-influence-led-lighting-design
$Comp
L pspice:0 #GND01
U 1 1 61C69336
P 7250 4900
F 0 "#GND01" H 7250 4800 50  0001 C CNN
F 1 "0" H 7250 4989 50  0000 C CNN
F 2 "" H 7250 4900 50  0001 C CNN
F 3 "~" H 7250 4900 50  0001 C CNN
	1    7250 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C69674
P 7250 4900
AR Path="/61B5C5B6/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/61C69674" Ref="#PWR010"  Part="1" 
AR Path="/6202E846/61C69674" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C69674" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 7250 4650 50  0001 C CNN
F 1 "GND" H 7255 4727 50  0000 C CNN
F 2 "" H 7250 4900 50  0001 C CNN
F 3 "" H 7250 4900 50  0001 C CNN
	1    7250 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 1500 3700 2000
Connection ~ 3700 2000
Wire Wire Line
	3700 2000 3700 2500
Wire Wire Line
	2600 2500 2600 2000
Wire Wire Line
	2600 2000 3700 2000
Connection ~ 2600 2500
Wire Wire Line
	1450 2500 2600 2500
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
F 6 "dc(0) pulse(0 {vlogic} 0 {pwm_edge} {pwm_edge} {(pwm_duty)/pwm_freq-pwm_edge} {1/pwm_freq} -1)" H 1580 2609 50  0000 L CNN "Spice_Model"
	1    1450 2700
	1    0    0    -1  
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
F 6 "dc({vgatedrv})" H 1730 1309 50  0000 L CNN "Spice_Model"
	1    1600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1200 3250 1200
Wire Wire Line
	6600 3700 7950 3700
Text Notes 6350 1250 0    50   ~ 0
TODO in schematic\n - rework driver as per this design\n - remove 9v supply, run everything (inc. MCU) off 5v\n - add 3 more power-mosfets to each channel (6 total per channel)
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61CA8F66
P 7950 3700
F 0 "#FLG0101" H 7950 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 7950 3873 50  0001 C CNN
F 2 "" H 7950 3700 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61CA91E0
P 1600 1200
F 0 "#FLG0102" H 1600 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 1600 1373 50  0001 C CNN
F 2 "" H 1600 1200 50  0001 C CNN
F 3 "~" H 1600 1200 50  0001 C CNN
	1    1600 1200
	1    0    0    -1  
$EndComp
Connection ~ 1600 1200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61CA94E2
P 1450 2500
F 0 "#FLG0103" H 1450 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 2673 50  0001 C CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "~" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
Connection ~ 1450 2500
Connection ~ 7950 3700
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61CAA5AE
P 7250 4900
F 0 "#FLG0104" H 7250 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 5073 50  0001 C CNN
F 2 "" H 7250 4900 50  0001 C CNN
F 3 "~" H 7250 4900 50  0001 C CNN
	1    7250 4900
	0    1    1    0   
$EndComp
Connection ~ 7250 4900
Connection ~ 5450 2000
Wire Wire Line
	4750 2000 5450 2000
$Comp
L Device:C C2
U 1 1 61C5E231
P 5450 2150
AR Path="/61C5E231" Ref="C2"  Part="1" 
AR Path="/61B5C5B6/61C5E231" Ref="C?"  Part="1" 
AR Path="/6202E846/61C5E231" Ref="C?"  Part="1" 
AR Path="/620593AE/61C5E231" Ref="C?"  Part="1" 
F 0 "C2" H 5565 2196 50  0000 L CNN
F 1 "3.3n" H 5565 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5488 2000 50  0001 C CNN
F 3 "~" H 5450 2150 50  0001 C CNN
F 4 "C307331" H 5450 2150 50  0001 C CNN "JLC"
	1    5450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C5F00B
P 5450 2300
AR Path="/61B5C5B6/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C03040/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A1/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C031A3/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/61C5F00B" Ref="#PWR03"  Part="1" 
AR Path="/6202E846/61C5F00B" Ref="#PWR?"  Part="1" 
AR Path="/620593AE/61C5F00B" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 5450 2050 50  0001 C CNN
F 1 "GND" H 5455 2127 50  0000 C CNN
F 2 "" H 5450 2300 50  0001 C CNN
F 3 "" H 5450 2300 50  0001 C CNN
	1    5450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C5A1AF
P 4600 2000
AR Path="/61B5C5B6/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C03040/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A1/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C031A3/61C5A1AF" Ref="R?"  Part="1" 
AR Path="/61C5A1AF" Ref="R2"  Part="1" 
AR Path="/6202E846/61C5A1AF" Ref="R2"  Part="1" 
AR Path="/620593AE/61C5A1AF" Ref="R24"  Part="1" 
F 0 "R2" V 4807 2000 50  0000 C CNN
F 1 "4.7k" V 4716 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4530 2000 50  0001 C CNN
F 3 "~" H 4600 2000 50  0001 C CNN
F 4 "C25079" H 4600 2000 50  0001 C CNN "JLC"
	1    4600 2000
	0    -1   -1   0   
$EndComp
Connection ~ 3250 1200
Wire Wire Line
	4000 1200 4000 1300
Wire Wire Line
	3250 1200 4000 1200
Text Notes 11800 10950 0    39   ~ 0
.param temp_a=40\n.param tja=80.5\n.param n_fets=2\n\n.param pwm_freq=240\n.param pwm_duty=0.5\n.param pwm_edge=0.5u\n\n.param vlogic=5\n.param vgatedrv=5\n.param vled=24\n.param iled=8\n\n.param sim_periods=5\n\n.csparam temp_a={temp_a}\n.csparam tja={tja}\n.csparam n_fets={n_fets}\n.csparam pwm_freq={pwm_freq}\n.csparam pwm_duty={pwm_duty}\n.csparam pwm_edge={pwm_edge}\n.csparam vlogic={vlogic}\n.csparam vgatedrv={vgatedrv}\n.csparam vled={vled}\n.csparam iled={iled}\n.csparam sim_periods={sim_periods}\n\n.options savecurrents\n.option temp='temp_a'\n\n.tran {1/2048/pwm_freq} {sim_periods/pwm_freq}\n\n.control\n\npre_set strict_errorhandling\n\nlet temp_a=$&temp_a\nlet n_fets=$&n_fets\nlet tja=$&tja\nlet pwm_freq=$&pwm_freq\nlet pwm_duty=$&pwm_duty\nlet pwm_edge=$&pwm_edge\nlet vlogic=$&vlogic\nlet vgatedrv=$&vgatedrv\nlet vled=$&vled\nlet iled=$&iled\nlet sim_periods=$&sim_periods\n\nlet id=@R7[i]\nlet vd=v("/DRAIN")\nlet pds=vd*id\n\nmeas TRAN id_min MIN id\nmeas TRAN id_max MAX id\nlet idl=0.1*(id_max-id_min)+id_min\nlet idh=0.9*(id_max-id_min)+id_min\n\nmeas TRAN id_rise_time TRIG id VAL=idl RISE=2 TARG id VAL=idh RISE=2\nmeas TRAN id_fall_time TRIG id VAL=idh FALL=2 TARG id VAL=idl FALL=2\n\nmeas TRAN id_rise_from WHEN id=idl RISE=2\nmeas TRAN id_rise_to WHEN id=idh RISE=1 td=id_rise_from\nmeas TRAN id_fall_from WHEN id=idh FALL=1 td=id_rise_to\nmeas TRAN id_fall_to WHEN id=idl FALL=1 td=id_fall_from\nmeas TRAN id_rise_from2 WHEN id=idl RISE=2 td=id_fall_to\n\nlet switching_time_fraction=((id_rise_to-id_rise_from)+(id_fall_to-id_fall_from)) / (id_rise_from2-id_rise_from)\n\nmeas tran wds_rise integ pds from=id_rise_from to=id_rise_to\nmeas tran wds_high integ pds from=id_rise_to to=id_fall_from\nmeas tran wds_fall integ pds from=id_fall_from to=id_fall_to\nmeas tran wds_low integ pds from=id_fall_to to=id_rise_from2\nmeas tran wds_all integ pds from=id_rise_from to=id_rise_from2\n\nlet pds_rise=wds_rise/(id_rise_to-id_rise_from)\nlet pds_high=wds_high/(id_fall_from-id_rise_to)\nlet pds_fall=wds_fall/(id_fall_to-id_fall_from)\nlet pds_low=wds_low/(id_rise_from2-id_fall_to)\nlet pds_all=wds_all/(id_rise_from2-id_rise_from)\n\nlet switching_loss=(wds_rise+wds_fall)/wds_all\nlet total_loss=mean(vd*id) / mean((vled-vd)*id)\n\nlet rds=vd/id\nmeas tran rds_on avg rds from=id_rise_to to=id_fall_from\nmeas tran rds_off avg rds from=id_fall_to to=id_rise_from2\n\nlet temp_ja=tja*pds_all/n_fets\nlet temp_j=temp_a+temp_ja\n\nlet i_gpio_max=maximum(@V2[i])\n\necho .\necho CONFIG:\nprint sim_periods\necho .\n\necho Voltages\nprint vlogic\nprint vgatedrv\nprint vled\nprint iled\necho .\n\necho PWM configuration\nprint pwm_freq\nprint pwm_duty\nprint pwm_edge\necho .\n\necho Number of parallel'd transistors\nprint n_fets\necho .\n\necho .\necho RESULTS:\necho .\n\necho Power lost in transistors during rise/high/fall/low\nprint pds_rise\nprint pds_high\nprint pds_fall\nprint pds_low\nprint pds_all\necho .\n\necho Effective Rds(on/off)\nprint rds_on\nprint rds_off\necho .\n\necho Actual Rds(on/off)\nprint rds_on*n_fets\nprint rds_off*n_fets\necho .\n\necho Switching loss as fraction of loss in transistors\nprint switching_loss\necho .\n\necho Loss in transistors as fraction of total power (lost + delivered to load)\nprint total_loss\necho .\n\necho Drain current rise/fall root-frequencies (1/t)\nprint (1/id_rise_time)\nprint (1/id_fall_time)\necho .\n\necho Temperatures\nprint temp_ja\nprint temp_a\nprint temp_j\necho .\n\necho Switching time fraction of full cycle\nprint switching_time_fraction\necho .\n\necho Max GPIO loading\nprint i_gpio_max\necho .\n\nset hcopydevtype=svg\nset svg_intopts=( 1200 900 24 0 1 4 1 )\nsetcs svg_stropts=( black Arial Arial )\nset color1=cyan\nset color2=green\n\nhardcopy sim_ids_tran.svg id title 'Ids transient' xlabel 'Time' ylabel 'Ids'\n\nlinearize id\nset specwindow=none\nfft id\nhardcopy sim_ids_fft.svg db(id) title 'Ids spectrum' xlabel 'Frequency' ylabel 'Ids (db A)'\n\n.endc\n
Wire Wire Line
	5450 2000 6750 2000
Connection ~ 1150 4200
Connection ~ 1450 4400
Wire Wire Line
	1450 4000 2250 4000
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 61D149E6
P 2150 4200
AR Path="/61B5C5B6/61D149E6" Ref="Q?"  Part="1" 
AR Path="/61C03040/61D149E6" Ref="Q?"  Part="1" 
AR Path="/61C031A1/61D149E6" Ref="Q?"  Part="1" 
AR Path="/61C031A3/61D149E6" Ref="Q?"  Part="1" 
AR Path="/61D149E6" Ref="Q2"  Part="1" 
AR Path="/6202E846/61D149E6" Ref="Q?"  Part="1" 
AR Path="/620593AE/61D149E6" Ref="Q?"  Part="1" 
F 0 "Q2" H 2355 4246 50  0000 L CNN
F 1 "NTMS4807" H 2355 4155 50  0000 L CNN
F 2 "" H 2350 4125 50  0001 L CIN
F 3 "" H 2150 4200 50  0001 L CNN
F 4 "X" H 2150 4200 50  0001 C CNN "Spice_Primitive"
F 5 "ntms4807nr2g" H 2150 4200 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2150 4200 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "spice/NTMS4807NR2G.LIB" H 2150 4200 50  0001 C CNN "Spice_Lib_File"
F 8 "3 1 2" H 2150 4200 50  0001 C CNN "Spice_Node_Sequence"
	1    2150 4200
	1    0    0    -1  
$EndComp
Connection ~ 2250 4000
Wire Wire Line
	1150 4200 1950 4200
Wire Wire Line
	1450 4400 2250 4400
Text Notes 9350 6300 0    50   ~ 0
B = μ₀ I / 2πr\n\nμ₀ = 2αh/e²c = 1.3e-6 m kg s¯² A¯²\n\ndB/dt = μ₀ dI/dt / 2πr = 2e-7 dI/dt / r
Text Notes 1100 6500 0    50   ~ 0
https://scantech7.com/emf-rf-magnetic-electric-field-sound-noise-radiation-safety-levels-dallas-fort-worth-houston-austin/
Wire Wire Line
	2250 4000 6600 4000
$EndSCHEMATC
