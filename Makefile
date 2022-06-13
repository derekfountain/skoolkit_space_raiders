all:space_raiders/index.html

space_raiders/index.html:space_raiders.skool space_raiders.ref
	skool2html.py --asm-labels -a \
			space_raiders.skool space_raiders.ref
