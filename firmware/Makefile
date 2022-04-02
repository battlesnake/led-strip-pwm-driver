sources = $(wildcard *.c lib/*/*.c)
sources_asm = $(wildcard *.s lib/*/*.s)
headers = $(wildcard include/*/)
objects = $(sources:%.c=build/%.o)
objects_asm = $(sources_asm:%.s=build/%.o)
libraries =
program = build/program
drivers = clk exti gpio i2c rst tim1 tim2 uart1 itc
defines = STM8S003

ASFLAGS =
CPPFLAGS = $(headers:%=-I%) $(defines:%=-D%)
CFLAGS = -mstm8 -pstm8s003 --opt-code-size --std-c99 -c --out-fmt-elf --debug --asm=gas --function-sections --data-sections
LDFLAGS = -T./elf32stm8s003f3.x --print-memory-usage --gc-sections -Map $(program).map
ifeq ($(filter debug openocd serial,$(MAKECMDGOALS)),)
MAKEFLAGS += -Otarget
else
MAKEFLAGS += -Onone
endif
FLASHFLAGS = -c stlinkv2 -p stm8s003?3

CC := sdcc
AS := stm8-as
LD := stm8-ld
OBJCOPY := stm8-objcopy
GDB := stm8-gdb
RM := rm -f --
RMRF := rm -rf --
MKDIRP := mkdir -p
FLASH := stm8flash
OPENOCD := openocd

.DEFAULT: build
.PHONY: force prepare build clean distclean flash openocd debug serial

build: $(program)

prepare: \
		pkg-ext/STM8S_StdPeriph_Lib/.prepared \
		pkg-ext/stm8s-sdcc-lib/.prepared

clean:
	$(RMRF) build/

flash: $(program) | build
	$(FLASH) $(FLASHFLAGS) -w $<

distclean: clean
	$(RMRF) pkg-ext/ lib/ include/

openocd:
	$(OPENOCD) -f interface/stlink-dap.cfg -f /usr/share/openocd/scripts/target/stm8s003.cfg -c "init" -c "reset halt"

debug:
	$(GDB) $(program) -q -ex 'target extended-remote localhost:3333' -ex 'monitor reset halt' -ex 'load' -ex 'b assert_failed'

serial:
	minicom -D /dev/ttyUSB0 -b 9600 -8

$(program): $(objects) $(objects_asm)
	@$(MKDIRP) $(@D)
	$(OBJCOPY) --weaken build/stm8s_it.o
	$(LD) $(LDFLAGS) -o $@ $^ $(libraries:%=-l%)

build/%.c.d: %.c
	@$(MKDIRP) $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -MM > $@ $<

$(objects): build/%.o: %.c build/%.c.d
	@$(MKDIRP) $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -o $@ $<

build/%.s.d: %.s
	@$(MKDIRP) $(@D)
	$(AS) $(ASFLAGS) --MD $@ $<

$(objects_asm): build/%.o: %.s build/%.s.d
	@$(MKDIRP) $(@D)
	$(AS) $(ASFLAGS) -o $@ $<

define link_driver
	ln -srft lib/stm8s/ pkg-ext/STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver/src/stm8s_$(1).c

endef

define link_drivers
$(foreach driver,$(drivers),$(call link_driver,$(driver)))
endef

pkg-ext/STM8S_StdPeriph_Lib/.prepared: \
		pkg/stm8s/en.stsw-stm8069_v2.3.1.zip \
		pkg/stm8s/STM8S_StdPeriph_Lib_V2.3.1_sdcc.patch
	$(RMRF) $(@D)
	$(MKDIRP) $(@D)
	# Extract SPL
	unzip -qd $(dir $(@D)) $(word 1,$^)
	# Patch for SDCC
	patch -p2 --quiet -d pkg-ext/STM8S_StdPeriph_Lib/ --batch < $(word 2,$^)
	# Import sources
	$(RMRF) lib/stm8s
	$(MKDIRP) lib/stm8s/
	$(call link_drivers)
	# Import headers
	$(RMRF) include/stm8s
	$(MKDIRP) include/
	ln -srf pkg-ext/STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver/inc include/stm8s
	# Export platform config
	cp -n pkg-ext/STM8S_StdPeriph_Lib/Project/STM8S_StdPeriph_Template/stm8s{_conf.h,_it.h,_it.c} ./
	ln -srft pkg-ext/STM8S_StdPeriph_Lib/Libraries/STM8S_StdPeriph_Driver/inc/ stm8s_conf.h stm8s_it.h stm8s_it.c
	# Mark as done
	touch $@

pkg-ext/stm8s-sdcc-lib/.prepared: \
		$(wildcard pkg/stm8s-sdcc-lib/*.c)
	$(RMRF) $(@D)
	$(MKDIRP) $(@D)
	# Extract source
	cp -t $(@D) $^
	# Import sources
	$(RMRF) lib/stm8s-sdcc
	$(MKDIRP) lib/stm8s-sdcc/
	ln -srft lib/stm8s-sdcc/ pkg-ext/stm8s-sdcc-lib/*.c
	# Mark as done
	touch $@

-include $(shell find build/ -type f -name \*.d 2>/dev/null)
