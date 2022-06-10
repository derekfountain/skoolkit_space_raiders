@ 16384 start
@ 16384 org
b 16384 Data block at 16384
D 16384 #SCR(loading)
B 16384,608,16
t 16992 Message at 16992
T 16992,5,5
b 16997 Data block at 16997
B 16997,33,8*4,1
t 17030 Message at 17030
T 17030,3,3
b 17033 Data block at 17033
B 17033,253,8*31,5
t 17286 Message at 17286
T 17286,3,3
b 17289 Data block at 17289
B 17289,509,8*63,5
t 17798 Message at 17798
T 17798,3,3
b 17801 Data block at 17801
B 17801,253,8*31,5
t 18054 Message at 18054
T 18054,3,3
b 18057 Data block at 18057
B 18057,9,8,1
t 18066 Message at 18066
T 18066,3,3
b 18069 Data block at 18069
B 18069,2764,8*345,4
t 20833 Message at 20833
T 20833,6,6
b 20839 Data block at 20839
B 20839,68,8*8,4
t 20907 Message at 20907
T 20907,3,3
b 20910 Data block at 20910
B 20910,179,8*22,3
t 21089 Message at 21089
T 21089,3,3
b 21092 Data block at 21092
B 21092,5,5
t 21097 Message at 21097
T 21097,4,4
s 21101 Unused
S 21101,1,1
t 21102 Message at 21102
T 21102,3,3
b 21105 Data block at 21105
B 21105,2,2
t 21107 Message at 21107
T 21107,4,4
b 21111 Data block at 21111
B 21111,2,2
t 21113 Message at 21113
T 21113,3,3
b 21116 Data block at 21116
B 21116,46,8*5,6
t 21162 Message at 21162
T 21162,4,4
b 21166 Data block at 21166
B 21166,179,8*22,3
t 21345 Message at 21345
T 21345,3,3
b 21348 Data block at 21348
B 21348,10,8,2
t 21358 Message at 21358
T 21358,4,4
b 21362 Data block at 21362
B 21362,6,6
t 21368 Message at 21368
T 21368,7,7
b 21375 Data block at 21375
B 21375,50,8*6,2
t 21425 Message at 21425
T 21425,3,3
b 21428 Data block at 21428
B 21428,177,8*22,1
t 21605 Message at 21605
T 21605,3,3
b 21608 Data block at 21608
B 21608,1,1
t 21609 Message at 21609
T 21609,4,4
s 21613 Unused
S 21613,1,1
t 21614 Message at 21614
T 21614,4,4
b 21618 Data block at 21618
B 21618,2,2
t 21620 Message at 21620
T 21620,3,3
s 21623 Unused
S 21623,1,1
t 21624 Message at 21624
T 21624,4,4
b 21628 Data block at 21628
B 21628,47,8*5,7
t 21675 Message at 21675
T 21675,3,3
b 21678 Data block at 21678
B 21678,179,8*22,3
t 21857 Message at 21857
T 21857,3,3
b 21860 Data block at 21860
B 21860,10,8,2
t 21870 Message at 21870
T 21870,4,4
b 21874 Data block at 21874
B 21874,6,6
t 21880 Message at 21880
T 21880,4,4
b 21884 Data block at 21884
B 21884,229,8*28,5
t 22113 Message at 22113
T 22113,6,6
b 22119 Data block at 22119
B 22119,8,8
t 22127 Message at 22127
T 22127,3,3
b 22130 Data block at 22130
B 22130,6,6
t 22136 Message at 22136
T 22136,6,6
b 22142 Data block at 22142
B 22142,44,8*5,4
t 22186 Message at 22186
T 22186,3,3
b 22189 Data block at 22189
B 22189,3,3
t 22192 Message at 22192
T 22192,4,4
b 22196 Data block at 22196
B 22196,1099,8*137,3
b 23295 End of loading screen
B 23295,1,1
i 23296
t 23646 Message at 23646
T 23646,3,3
b 23649 Data block at 23649
B 23649,138,8*17,2
t 23787 Message at 23787
T 23787,5,5
b 23792 Data block at 23792
B 23792,19,8*2,3
t 23811 Message at 23811
T 23811,5,5
b 23816 Data block at 23816
B 23816,18,8*2,2
t 23834 Message at 23834
T 23834,6,6
b 23840 Data block at 23840
B 23840,7,7
t 23847 Message at 23847
T 23847,10,10
b 23857 Data block at 23857
B 23857,620,8*77,4
t 24477 Message at 24477
T 24477,4,4
b 24481 Data block at 24481
B 24481,103,8*12,7
t 24584 Message at 24584
T 24584,4,4
b 24588 Data block at 24588
B 24588,17,8*2,1
b 24605 Game runtime data
B 24605,1,1 Speed factor, doesn't change
B 24606,5,1
B 24611,1,1 Number of lives player has left
B 24612,3,1
b 24615 Data block at 24615
B 24615,23,5,8*2,2
B 24638,1,1 Player ship pos, X
B 24639,1,1
B 24640,1,1 Player ship adjustment, -1, 0 or +1
B 24641,12,4,8
B 24652,1,1 Fire has been pressed flag
B 24653,1,1
b 24654 Game initialisation data
B 24654,1,1 Speed factor
B 24655,5,1
B 24660,1,1 Number of lives player starts with
B 24661,3,1
b 24664 Data block at 24664
B 24664,39,4,8*4,3
c 24703 Start of game, from LOADer and new game loop
D 24703 Used by the routine at #R25160.
C 24703,1 start here
C 24704,3 Game data initialisation, copies 10 bytes
C 24707,3 Clear screen pixels
C 24710,3 ???
C 24713,3 Draw lives as ships on top row
N 24716 This entry point is used by the routine at #R24919. Top of game loop?
N 24737 This entry point is used by the routine at #R24868.
N 24791 Return to top of game loop
s 24794 Unused
S 24794,1,1
c 24795 Routine at 24795
D 24795 Used by the routine at #R24703.
N 24806 This entry point is used by the routine at #R24703.
c 24823 Reset game data
C 24823,3 Initialisation data
C 24826,3 Play data
C 24829,3 10 bytes
C 24832,2 Copy to init a new game
c 24835 Routine at 24835
D 24835 Used by the routine at #R24703.
c 24868 Routine at 24868
D 24868 Used by the routine at #R24703.
C 24874,3 Load A with speed factor
C 24877,3 Busy wait a multiple of 'A' states
C 24880,3 Player ship position adjustment, -1, 0 or 1
c 24908 delay_ms (approx)
D 24908 Busy wait routine, pauses around 4360 * 'A' Ts, which is about 1.25ms on the 3.5MHz Z80.
R 24908 A:Number of 4360Ts to spin for
C 24909,1 11 Ts
C 24910,5 256 NOPs 4 Ts 13Ts = ~4352 Ts
c 24919 Count up to 7, no higher
D 24919 Increments the number at 24614 up to 7, but no higher. Used by the routine at #R24703.
C 24931,3 Jump back into game loop???
s 24934 Unused
S 24934,1,1
c 24935 Routine at 24935
D 24935 Used by the routines at #R24989, #R25034 and #R25643.
c 24989 Routine at 24989
D 24989 Used by the routine at #R24703.
N 25011 This entry point is used by the routine at #R25034.
s 25033 Unused
S 25033,1,1
c 25034 Draw lives remaining on top row
D 25034 Used by the routines at #R24703 and #R25105.
C 25034,3 Select 0th row
C 25037,3 Clear it
C 25040,3 Pick up number of lives remaining
C 25043,1 We're going to draw one fewer than that
C 25044,5 Zero or negative lives means ... something
C 25049,3 ???
C 25052,4 Player ship pos, X, but why 16 bits???
C 25063,3 Player ship pos, X
C 25066,3 Draw a player ship and move it into position
C 25069,3 Player ship pos, X
C 25074,3 Player ship pos, X
C 25087,4 Player ship pos, X, but why 16 bits?
N 25094 This entry point is used by the routine at #R24703.
c 25105 Routine at 25105
D 25105 Used by the routine at #R24703.
C 25133,3 Something to do with port 254?
C 25138,2 Null out bottom 3 bits - border?
C 25140,3 Put it back
C 25143,3 Sound burbler
c 25160 Routine at 25160
D 25160 Used by the routine at #R24703.
N 25164 This entry point is used by the routine at #R25105.
N 25167 This entry point is used by the routine at #R25105.
C 25200,3 Sound burbler
N 25216 Game over, wait for fire to be pressed
C 25216,3 Read keyboard
C 25219,6 Has fire pressed flag gone true? If so, loop back and read the keyboard again
c 25228 Routine at 25228
D 25228 Used by the routine at #R24703.
N 25231 This entry point is used by the routine at #R25160.
N 25239 This entry point is used by the routine at #R25160.
N 25247 This entry point is used by the routine at #R25160.
N 25250 This entry point is used by the routine at #R25160.
C 25252,3 Sound burbler
N 25255 This entry point is used by the routine at #R25160.
N 25256 This entry point is used by the routine at #R25160.
C 25258,3 Row 1, col 0, score and lives row
C 25261,3 INK colour from here
C 25265,2 The full row (32 cells)
C 25267,3 Set INK colour
C 25270,3 Row 23, col 0, player row
C 25273,3 INK colour from here
C 25277,2 The full row (32 cells)
C 25279,3 Set INK colour
b 25282 Data block at 25282
B 25282,160,8
c 25442 Routine at 25442
D 25442 Used by the routine at #R24703.
N 25537 This entry point is used by the routines at #R25592 and #R26225.
C 25541,3 Row 1
C 25544,3 Clear row
c 25592 Routine at 25592
D 25592 Used by the routine at #R25442.
C 25598,3 Sound burbler
C 25622,3 Row 1
C 25625,3 Clear row
c 25628 Routine at 25628
D 25628 Used by the routine at #R25442.
C 25628,3 Sound burbler
b 25639 Data block at 25639
B 25639,4,4
c 25643 Routine at 25643
D 25643 Used by the routine at #R25592.
c 25686 Routine at 25686
D 25686 Used by the routine at #R25643.
b 25691 Data block at 25691
B 25691,17,8*2,1
c 25708 Routine at 25708
D 25708 Used by the routine at #R24703.
c 25737 Routine at 25737
D 25737 Used by the routines at #R25708 and #R25976.
c 25749 Routine at 25749
D 25749 Used by the routine at #R25708.
C 25769,3 Player ship pos, X
c 25853 Routine at 25853
D 25853 Used by the routine at #R25708.
N 25875 This entry point is used by the routine at #R25994.
C 25905,3 Player ship pos, X
C 25917,3 Player ship pos, X
C 25932,3 Sound burbler
C 25946,3 Clear bottom row
C 25949,3 Sound burbler
c 25976 Routine at 25976
D 25976 Used by the routines at #R25853 and #R26225.
N 25981 This entry point is used by the routine at #R25853.
c 25994 Routine at 25994
D 25994 Used by the routine at #R25853.
c 26001 Clear bottom character row
C 26001,3 Top scan of bottom row of the screen, where the ship is
c 26004 Clear one character row
C 26004,2 We're going to clear 8 scans at screen address in DE
C 26007,8 Screen width is 32 bytes, write zero into each byte
C 26015,1 Down one scan (this won't work across boundaries)
C 26016,1 Back for next scan
c 26020 Routine at 26020
D 26020 Used by the routines at #R25976 and #R26490.
N 26023 This entry point is used by the routine at #R25853.
N 26033 This entry point is used by the routine at #R25853.
c 26038 Routine at 26038
D 26038 Used by the routine at #R24703.
c 26049 Routine at 26049
D 26049 Used by the routine at #R26038.
b 26097 Data block at 26097
B 26097,13,8,5
t 26110 Message at 26110
T 26110,3,3
b 26113 Data block at 26113
B 26113,41,8*5,1
c 26154 Routine at 26154
D 26154 Used by the routines at #R25749 and #R26049.
c 26225 Routine at 26225
D 26225 Used by the routine at #R26049.
C 26246,3 Sound burbler
C 26298,3 Sound burbler
C 26315,3 Clear bottom row
c 26320 Routine at 26320
D 26320 Used by the routine at #R26225.
c 26337 Routine at 26337
D 26337 Used by the routine at #R26225.
N 26355 This entry point is used by the routine at #R26225.
c 26375 Routine at 26375
D 26375 Used by the routine at #R26225.
b 26459 Data block at 26459
B 26459,5,5
c 26464 Routine at 26464
D 26464 Used by the routine at #R26225.
c 26484 Routine at 26484
D 26484 Used by the routines at #R26375 and #R26464.
s 26489 Unused
S 26489,1,1
c 26490 Routine at 26490
D 26490 Used by the routine at #R26038.
N 26503 This entry point is used by the routine at #R26541.
C 26528,3 Sound burbler
b 26534 Data block at 26534
B 26534,4,4
c 26538 Routine at 26538
c 26541 Routine at 26541
D 26541 Used by the routine at #R26490.
c 26566 Routine at 26566
D 26566 Used by the routine at #R24703.
C 26566,3 Read keyboard
C 26579,5 Has fire been pressed? Return if not
c 26587 Keypress detection
D 26587 Used by the routines at #R25160 and #R26566
D 26587 ???? Still not worked out how B being held is propogated ????
R 26587 O:24652 (fire pressed flag) set 1 if fire has been pressed
C 26587,3 0xFEFE - matrix SHIFT, Z, X, C, V
C 26590,2 Read port into E
C 26592,3 0xF7FE - matrix 1, 2, 3, 4, 5
C 26595,2 Read port into D
C 26597,3 A holds player ship X-pos
C 26600,2 C will be the pixels to move
N 26602 Left pressed check - look for Z or 1 being down
C 26602,2 Z (left) pressed?
C 26604,2 Skip looking for other key (1) if yes
C 26606,2 1 (left) pressed?
C 26608,2 Neither left key is pressed so skip to look for right pressed
N 26610 Move left is pressed
C 26610,1 Is player already at leftmost position?
C 26611,2 Yes, can't move left then
C 26613,1 Move one pixel left
N 26614 Right pressed check - look for X or 2 being down
C 26614,2 X (right) pressed?
C 26616,2 Skip looking for other key (2) if yes
C 26618,2 2 (left) pressed?
C 26620,2 Neither right key is pressed so skip to look for fire pressed
N 26622 Move right is pressed
C 26622,2 Is player already at rightmost position?
C 26624,2 Yes, can't move right then
C 26626,1 Move one pixel right
N 26627 C contains position adjustment, -1 or +1
C 26627,4 Load player ship position adjustment, -1, 0 or 1
N 26631 Now check for fire being pressed
C 26631,3 0x7FFE - matrix SPACE, SYM SHFT, M, N, B
C 26634,2 Read port into E
C 26636,2 Space pressed?
C 26638,2 Jump to fire-pressed routine if yes
C 26640,2 D still holds number keys state, 5 pressed?
C 26642,2 Jump to fire-pressed routine if yes
N 26644 If we drop to here fire is not pressed, B isn't pressed, so we set flags and return
C 26644,5 Set fire released flag to 1
C 26649,4 Set fire pressed flag to 0
N 26654 Fire is pressed, check B which is a secret button to freeze your bullet
C 26654,2 E still contains Z-B keys state, B pressed?
C 26656,2 Jump if B is not pressed
N 26658 Exit, B is pressed
C 26658,2 Restore and return
N 26660 Fire is pressed, B is not pressed
C 26660,7 Is fire released flag set to 0? Jump back and clear fire pressed flag if so
C 26667,3 Set fire pressed flag to 1
C 26670,4 Set released flag to 0
c 26675 Called from ship drawing?
D 26675 Used by the routines at #R26566 and #R26965.
C 26675,3 Player ship position adjustment, -1, 0 or 1
C 26678,2 Ship doesn't need to move, just return
C 26680,4 Set A to 0 if there's an odd number of bits. I think this is a sanity check?
C 26684,4 IX points to player ship pos, X
C 26688,3 Set HL to 26722 if A != 0, or 26796 if A == 0
C 26704,3 Player ship pos, X
C 26708,3 Player ship pos, X
c 26712 Set HL to 26722 or 26796
D 26712 If A isn't zero, return 26722 in HL If A is zero, return 26796 in HL.
b 26721 Keypress routine's fire-released flag
D 26721 This is set 1 when the fire key is released. It's set 0 when the fire key is pressed. If it's found to be 0 when the fire key is read as pressed the fire-pressed flag is held at 0. In order words the fire-pressed flag will only go true when this is 1, and it's only set 1 when the fire key is found to be released
B 26721,1,1 Fire released flag, local to keypress routine
b 26722 Data block at 26722
B 26722,161,7,8*19,2
c 26883 Routine at 26883
D 26883 Used by the routine at #R26566.
C 26883,3 Sound burbler
C 26898,3 Player ship pos, X
c 26916 Routine at 26916
D 26916 Used by the routine at #R26566.
N 26940 This entry point is used by the routine at #R26883.
c 26947 Routine at 26947
D 26947 Used by the routines at #R26225, #R26538 and #R26541.
N 26959 This entry point is used by the routine at #R26916.
s 26964 Unused
S 26964,1,1
c 26965 Draw player ship and scroll it into position.
D 26965 Used by the routine which draws lives remaining at the top, and when the a new life appears at the bottom after dying
C 26965,2 Set by one of the subroutines, ???
C 26968,5 Set up adjustment of -1, which means 1 pixel left
C 26973,3 Player ship pos, X
C 26981,3 Player ship pos, X
C 26987,3 Sound burbler
c 27005 Routine at 27005
D 27005 Used by the routine at #R27030.
s 27029 Unused
S 27029,1,1
c 27030 Routine at 27030
D 27030 Used by the routine at #R24703.
c 27097 Routine at 27097
D 27097 Used by the routines at #R25749, #R26049, #R30857 and #R31075.
c 27114 Routine at 27114
D 27114 Used by the routine at #R27030.
b 27127 Data block at 27127
B 27127,202,8*25,2
t 27329 Message at 27329
T 27329,4,4
s 27333 Unused
S 27333,1,1
t 27334 Message at 27334
T 27334,15,15
s 27349 Unused
S 27349,1,1
t 27350 Message at 27350
T 27350,11,11
b 27361 Data block at 27361
B 27361,28,8*3,4
t 27389 Message at 27389
T 27389,19,19
s 27408 Unused
S 27408,1,1
t 27409 Message at 27409
T 27409,13,13
b 27422 Data block at 27422
B 27422,22,8*2,6
t 27444 Message at 27444
T 27444,3,3
b 27447 Data block at 27447
B 27447,29,8*3,5
t 27476 Message at 27476
T 27476,11,11
s 27487 Unused
S 27487,1,1
t 27488 Message at 27488
T 27488,8,8
b 27496 Data block at 27496
B 27496,3,3
t 27499 Message at 27499
T 27499,7,7
b 27506 Data block at 27506
B 27506,39,8*4,7
t 27545 Message at 27545
T 27545,3,3
b 27548 Data block at 27548
B 27548,150,8*18,6
t 27698 Message at 27698
T 27698,3,3
b 27701 Data block at 27701
B 27701,362,8*45,2
t 28063 Message at 28063
T 28063,3,3
b 28066 Data block at 28066
B 28066,14,8,6
t 28080 Message at 28080
T 28080,3,3
b 28083 Data block at 28083
B 28083,302,8*37,6
t 28385 Message at 28385
T 28385,3,3
b 28388 Data block at 28388
B 28388,16,8
t 28404 Message at 28404
T 28404,3,3
b 28407 Data block at 28407
B 28407,154,8*19,2
t 28561 This comes from ASM.COM: https://www.iee.et.tu-dresden.de/~kc-club/09/RUBRIK23.HTM which is a CP/M assembler. Most of these messages appear to come from it, so quite a lot of the tool appears to be in here.
T 28561,36,36
b 28597 Data block at 28597
B 28597,4,4
t 28601 Message at 28601
T 28601,4,4
b 28605 Data block at 28605
B 28605,345,8*43,1
t 28950 Message at 28950
T 28950,3,3
b 28953 Data block at 28953
B 28953,42,8*5,2
t 28995 Message at 28995
T 28995,3,3
b 28998 Data block at 28998
B 28998,525,8*65,5
t 29523 Message at 29523
T 29523,3,3
b 29526 Data block at 29526
B 29526,5,5
t 29531 Message at 29531
T 29531,4,4
b 29535 Data block at 29535
B 29535,380,8*47,4
t 29915 Message at 29915
T 29915,4,4
b 29919 Data block at 29919
B 29919,606,8*75,6
t 30525 Message at 30525
T 30525,3,3
b 30528 Data block at 30528
B 30528,9,8,1
t 30537 Message at 30537
T 30537,4,4
b 30541 Data block at 30541
B 30541,114,8*14,2
t 30655 Message at 30655
T 30655,3,3
b 30658 Data block at 30658
B 30658,1,1
t 30659 Message at 30659
T 30659,3,3
b 30662 Data block at 30662
B 30662,95,8*11,7
t 30757 Message at 30757
T 30757,3,3
b 30760 Data block at 30760
B 30760,97,8*12,1
c 30857 Routine at 30857
D 30857 Used by the routine at #R24795.
C 30894,3 Sound burbler
c 30995 Routine at 30995
D 30995 Used by the routine at #R30857.
C 30995,3 Sound burbler
N 31030 This entry point is used by the routine at #R31064.
C 31051,3 Sound burbler
c 31064 Routine at 31064
D 31064 Used by the routine at #R30857.
c 31075 Routine at 31075
D 31075 Used by the routine at #R24703.
C 31089,3 Sound burbler
s 31107 Unused
S 31107,12,12
c 31119 Routine at 31119
D 31119 Used by the routines at #R26154, #R30857, #R30995 and #R31075.
c 31198 Routine at 31198
D 31198 Used by the routines at #R30995 and #R31075.
c 31257 Routine at 31257
D 31257 Used by the routine at #R31198.
c 31290 Set INK colour of attributes
D 31290 Sets a number of attributes to given INK colour
R 31290 I:B first cy
R 31290 I:C first cx
R 31290 I:D Number of attributes to set
R 31290 I:E INK colour
C 31290,3 Find attribute address of cy,cx in BC
C 31293,3 Clear INK in attribute cell
C 31296,1 Merge in E
C 31297,1 Set attribute cell
C 31298,1 Next cell
C 31299,1 Dec counter
c 31303 Sets 2 rows to an INK colour
D 31303 This might be setting the colour bands for the aliens?
C 31303,4 Pick up cy from here
C 31307,2 cx is 0, start of row
C 31309,3 0x6012
C 31312,3 ???
C 31320,1 Pick up INK colour from (HL)
C 31321,1 E is INK colour
C 31322,2 2 full rows
C 31324,3 Set INK colour
c 31327 Routine at 31327
D 31327 Used by the routine at #R30995.
C 31354,3 Sound burbler
b 31371 Data block at 31371
B 31371,48,8
t 31419 Message at 31419
T 31419,4,4
s 31423 Unused
S 31423,1,1
t 31424 Message at 31424
T 31424,4,4
s 31428 Unused
S 31428,1,1
t 31429 Message at 31429
T 31429,4,4
s 31433 Unused
S 31433,3,3
c 31436 Routine at 31436
D 31436 Used by the routine at #R24703.
b 31509 Data block at 31509
B 31509,18,8*2,2
c 31527 Routine at 31527
D 31527 Used by the routines at #R25853 and #R26541.
C 31621,3 Sound burbler
c 31634 Routine at 31634
D 31634 This is the entry in the jump table handled by the routine at 32374 when that code is called with A=0
c 31640 Routine at 31640
D 31640 This is arrived at during the ship drawing code. It's in a jump table alongside 3 functions.
R 31640 Used by the routine at #R31527.
c 31647 Data block at 31647
c 31653 Routine at 31653
D 31653 Used by the routine at #R31527.
b 31658 Data block at 31658
c 31922 Routine at 31922
D 31922 Used by the routines at #R31634, #R31640 and #R31653.
c 31960 Routine at 31960
D 31960 Used by the routines at #R25442, #R25853, #R26020, #R26675, #R26916 and #R26947.
C 31960,3 Prime jump at 32362
C 31978,3 Call to primed jump code
s 31984
S 31984,2,2 Temp store for DE while sound burbler runs
b 31986
B 31986,1,1 Beeper's border protection value is stored here
c 31987 Sound burbler
D 31987 Loop over a sequence of pitch/length pairs, calling the beeper with each
D 31987 I'm still not sure what the preamble does. It think it's setting the border colour such that sending toggles to port 254 doesn't change the border.
R 31987 Input:DE pointer to sequence of pitch/length tuples
C 31987,4 Save DE somewhere
C 31991,1 Take DE from the stack
C 31992,1 Save
C 31993,1 Save
C 31994,1 Save
C 31995,3 A comes from this location
C 31998,2 Mask out bottom 3 bits
C 32000,1 Rotate down 3 bits
C 32003,2 Set this bit
C 32005,3 Save result, it's picked up by the beeper routine
C 32008,1 DE was pointing to something interesting
C 32009,1 Next byte, whatever it is
C 32010,3 If it's zero we're done
C 32013,1 Low byte from (DE) into L, it's a count of something
C 32014,1 High byte from (DE) into A, it's the pitch
C 32015,1 Move on ready for next one
C 32016,1 Pitch goes into C
C 32017,3 Toggle beeper bit according to pitch
C 32020,3 Reduce the counter and do it again
C 32023,2 Next note, or whatever it is
C 32025,1 Restore
C 32026,1 Restore
C 32027,1 Restore
C 32028,1 Put DE back on stack
C 32029,4 Put DE back as it was at entry
c 32034 Toggle speaker bit, causes a click based on the given pitch
D 32034 This calls forward into itself as a sort of subroutine. That does the pitch pause, then toggles the bit, then returns. A small delay, then it does it again - pitch pause, then toggle the bit back again.
R 32034 Input:C Pitch
C 32034,3 This must be picking up a saved border colour?
C 32037,3 Call forward to the toggle routine then drop through and do it again
C 32040,4 Small delay times 4
C 32044,1 C contains a delay factor
C 32045,1 4Ts
C 32046,1 4Ts
C 32047,1 4Ts
C 32048,2 12*C Ts delay
C 32050,4 Toggle speaker bit
b 32055 Data block at 32055
B 32055,1,1
t 32056 Message at 32056
T 32056,3,3
c 32059 Routine at 32059
D 32059 Used by the routines at #R25749 and #R31527.
b 32112 Data block at 32112
B 32112,15,8,7
c 32127 Routine at 32127
D 32127 Used by the routine at #R24935.
c 32159 Routine at 32159
D 32159 Used by the routine at #R24935.
b 32174 Data block at 32174
B 32174,2,2
t 32176 Message at 32176
T 32176,4,4
b 32180 Data block at 32180
B 32180,74,8*9,2
c 32254 Routine at 32254
D 32254 Used by the routines at #R26337, #R30995, #R31198 and #R32275.
c 32275 Routine at 32275
D 32275 Used by the routines at #R24935 and #R32307.
c 32287 Clear screen pixel data
D 32287 Zeroes 6144 bytes starting at 0x4000
@ 32287 label=clear_pixels
C 32287,3 Start of screen
C 32290,2 Run this loop 24 times
C 32292,1 Zero
C 32294,1 Load zero into screen location
C 32296,3 Clear 256 bytes 24 times
c 32302 Routine at 32302
D 32302 Used by the routines at #R24989 and #R25160.
c 32307 Routine at 32307
D 32307 Used by the routine at #R32302.
N 32311 This entry point is used by the routine at #R31436.
C 32317,3 HL = (A * 8) + (23606)
c 32343 Attribute address finder, cx,cy to attr address
D 32343 Find attribute address from cx,cy
R 32343 I:B cy
R 32343 I:C cx
R 32343 O:HL aaddr of cx,cy
C 32344,2 Input B with top 2 bits now set
C 32347,2 HL is now 0x02Cx, where x came from B
C 32349,1 x2
C 32350,1 x4
C 32351,1 x8
C 32352,1 x16
C 32353,1 x32 - HL now at start of row cy
C 32354,1 Pick up cx from input parameter
C 32355,2 Add as offset
C 32357,2 If cx was greater than 32 move to next row
C 32359,1 Result address in HL
s 32360 A 2 byte entry from the table at 32362 is copied into here by the ship drawing routine. It's used as a destination for the jump at 32362
S 32360,2,2
c 32362 Jump to pre-selected routine held at address 32360.
b 32366 This appears to be a jump table with 4 entries.
D 32366 0x7B92, 0x7B98, 0x7B9F, 0x7BA5 31634   31640   31647   31653
B 32366,8,8
c 32374 Prime jump code at 32362
D 32374 Select an entry from the jump table at 32366, copy the entry to the 2 bytes of storage at 32360. This primes the jump code at 32362.
D 32374 ??? Dunno what it actually does though.
R 32374 Input:A 0 to 3, which pair to copy
C 32374,1 Save regs
C 32376,2 Bottom 2 bits only
C 32378,1 HL = A
C 32381,1 HL = Ax2
C 32382,3 Jump table
C 32385,1 Select the entry from input value into HL
C 32386,3 2 byte result goes here
C 32389,6 Copy 2 bytes from jump table entry to result
C 32395,1 Restore regs
c 32398 Multiply A by 8, then add (23606)
C 32399,3 A into HL
C 32402,1 x2
C 32403,1 x4
C 32404,1 x8
C 32405,5 Add on the value found here
C 32411,1 Result in HL
b 32412 Data block at 32412
B 32412,356,8*44,4
i 32768
t 65369 Message at 65369
T 65369,3,3
b 65372 Data block at 65372
B 65372,21,8*2,5
t 65393 Message at 65393
T 65393,6,6
b 65399 Data block at 65399
B 65399,21,8*2,5
t 65420 Message at 65420
T 65420,3,3
b 65423 Data block at 65423
B 65423,5,5
t 65428 Message at 65428
T 65428,3,3
b 65431 Data block at 65431
B 65431,13,8,5
t 65444 Message at 65444
T 65444,3,3
s 65447 Unused
S 65447,2,2
t 65449 Message at 65449
T 65449,6,6
b 65455 Data block at 65455
B 65455,10,8,2
t 65465 Message at 65465
T 65465,6,6
s 65471 Unused
S 65471,2,2
t 65473 Message at 65473
T 65473,6,6
s 65479 Unused
S 65479,2,2
t 65481 Message at 65481
T 65481,6,6
b 65487 Data block at 65487
B 65487,10,8,2
t 65497 Message at 65497
T 65497,6,6
b 65503 Data block at 65503
B 65503,26,8*3,2
t 65529 Message at 65529
T 65529,6,6
s 65535 Unused
S 65535,1,1
