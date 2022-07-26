all:space_raiders/index.html

space_raiders/index.html:space_raiders.skool space_raiders.ref
	skool2html.py --rebuild-images --asm-labels --theme wide -a \
			space_raiders.skool space_raiders.ref

# This assembler output can be fed straight into Pasmo
space_raiders.asm:space_raiders.skool
	skool2asm.py --set handle-unsupported-macros=1 --set line-width=132 space_raiders.skool > space_raiders.asm
	echo "END 24703" >> space_raiders.asm

# Pasmo dumbly puts a CLEAR 16384 in the loader, so this doesn't work :(
#  pasmo --tapbas space_raiders.asm space_raiders.tap
# Fortunately Skoolkit has the option too :)
space_raiders.tap:space_raiders.skool
	skool2bin.py --start 24588 --end 32412 space_raiders.skool space_raiders.bin
	bin2tap.py --clear 24587 --org 24588 --start 24703 space_raiders.bin space_raiders.tap

.PHONY: exportctl
exportctl:
	cp -f space_raiders.ctl space_raiders.ctl.bak
	skool2ctl.py space_raiders.skool > space_raiders.ctl

.PHONY: importctl
importctl:
	cp -f space_raiders.skool space_raiders.skool.bak
	sna2skool.py -c space_raiders.ctl space_raiders.orig.z80 > space_raiders.skool
