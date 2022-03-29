sources = $(wildcard *.c lib/*/*.c)
headers = $(wildcard include/*/)
objects = $(sources:%.c=build/%.rel)
libraries = stm8
program = build/program.elf
drivers = clk exti gpio i2c rst tim1 tim2 uart1 itc
defines = STM8S003

CPPFLAGS = $(headers:%=-I%) $(defines:%=-D%)
CFLAGS = -c -mstm8 --opt-code-size --std-c11
LDFLAGS = -mstm8 --out-fmt-elf
MAKEFLAGS += -Otarget
FLASHFLAGS = -c stlinkv2 -p stm8s003?3 -s flash

CC := sdcc
LD := sdcc
RMRF := rm -rf --
MKDIRP := mkdir -p
FLASH := stm8flash
OPENOCD := openocd

.DEFAULT: build
.PHONY: force prepare build clean distclean flash openocd

build: $(program)

prepare: pkg-ext/STM8S_StdPeriph_Lib/.prepared

clean:
	$(RMRF) build/ lib/ include/

flash: $(program)
	$(FLASH) $(FLASHFLAGS) -w $<

distclean: clean
	$(RMRF) pkg-ext/

openocd:
	$(OPENOCD) -v -f interface/stlink-dap.cfg -f /usr/share/openocd/scripts/target/stm8s003.cfg -c "init" -c "reset halt"

$(program): $(objects)
	@$(MKDIRP) $(@D)
	$(LD) $(LDFLAGS) -o $@ $^ $(libraries:%=-l%)

$(objects): build/%.rel: %.c
	@$(MKDIRP) $(@D)
	$(CC) $(CPPFLAGS) $(CFLAGS) -o $@ $<

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
	unzip -d $(dir $(@D)) $(word 1,$^)
	# Patch for SDCC
	patch -p2 -d pkg-ext/STM8S_StdPeriph_Lib/ --batch < $(word 2,$^)
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
