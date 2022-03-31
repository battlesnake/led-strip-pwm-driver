# Status

Not fixed in design yet.


# Datasheet p2: EC12D1524403

Refers to drawing #5


# Drawing #5:

Pins according to datasheet:

 - A: I/Q

 - B: Q/I

 - C: Common for IQ (should be GND)

 - D: Probably for pushbutton

 - E: Probably for pushbutton

Our schematic agrees with this.

But the pinout used for our footprint does not.

Where datasheet goes (clockwise) AEBDC
Our footprint goes: ACBDE

So swapping the following should fix things:
 - top-centre (C -> E)
 - bottom-left (E -> C)
