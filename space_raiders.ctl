;
; SkoolKit control file for Space Raiders
;
; To build the HTML disassembly, run these commands:
;   sna2skool.py -c space_raiders.ctl space_raiders.z80 > space_raiders.skool
;   skool2html.py space_raiders.skool space_raiders.ref
;

; Loading screen, export to ASM as bytes
b 16384 Loading screen
D 16384 #SCR(loading)
B 16384,6912,16

; Ignore from end of attributes to game start
i 23296

; Loader uses RANDOMISE USR 24703
c 24703 start

; 16K game, nothing useful past here
i 32768
