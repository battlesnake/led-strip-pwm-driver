# Custom tooling needed

Clone and build+install from sources

 - https://github.com/vdudouyt/stm8flash

 - https://github.com/XaviDCR92/stm8-dce-example

 - https://github.com/XaviDCR92/stm8-binutils-gdb


Install openocd-git from AUR and build from source too.

It may be necessary for one of these to add some configure-flags to disable some MIPS support.

# Prepare

	make distclean
	make prepare

# Build

	make build

# Flash

	make flash

# Flash+run+debug

Not got this working yet.

Tab 1:

	make openocd

Tab 2:

	stm8-gdb -q build/program.elf -ex 'target extended-remote localhost:3333' -ex 'monitor reset halt' -ex 'load' -ex 'break main'

Add `--tui` once we have GDB working.

