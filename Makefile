stm2kicad = ./stm2kicad/run.sh

.PHONY: all mcu-libs

.SECONDARY:

all: mcu-libs

mcu-libs: \
	mcu.lib

mcu.lib: mcu/mcu.ioc8
	$(stm2kicad) --input $< --output $@ --database /opt/stm8cubemx/db --style sip
