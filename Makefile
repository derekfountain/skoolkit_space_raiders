all:space_raiders/index.html

space_raiders/index.html:space_raiders.skool space_raiders.ref
	skool2html.py --rebuild-images --asm-labels -a \
			space_raiders.skool space_raiders.ref

.PHONY: exportctl
exportctl:
	cp -f space_raiders.ctl space_raiders.ctl.bak
	skool2ctl.py space_raiders.skool > space_raiders.ctl

.PHONY: importctl
importctl:
	cp -f space_raiders.skool space_raiders.skool.bak
	sna2skool.py -c space_raiders.ctl space_raiders.orig.z80 > space_raiders.skool
