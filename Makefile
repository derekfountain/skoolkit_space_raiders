all:space_raiders/index.html

space_raiders/index.html:space_raiders.skool space_raiders.ref
	skool2html.py --asm-labels -a -c Game/LinkOperands=CALL,DEFW,DJNZ,JP,JR,LD \
			space_raiders.skool space_raiders.ref
