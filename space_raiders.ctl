@ 16384 start
@ 16384 org
b 16384 Data block at 16384
D 16384 #SCR(loading)
B 16384,7222,16*38,8*826,6
N 23606 Default font is in the ROM. This points to $3C00, whereas the ROM's char set is at $3D00. The ROM starts with space (char 32) so this points 32*8 before the actual char data.
@ 23606 label=_CURRENT_FONT
B 23606,18,1*2,8
b 23624 Port 254 shadow
@ 23624 label=_PORT254_SHADOW
S 23624,1,1:n
B 23625,21,8,7,1,5
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
B 24588,5,5
N 24593 This one is used to initialise the screen. The lives ships on the top row and barriers are cyan on black. It never changes during the game.
@ 24593 label=_SCREEN_ATT_CYAN_ON_BLACK
B 24593,6,1,2,3
N 24599 This one is the colour for the player ship row
@ 24599 label=SCREEN_ATT_WHITE_ON_BLACK
B 24599,1,1
N 24600 This one is the colour for the spaceship row
@ 24600 label=SCREEN_ATT_MAGENTA_ON_BLACK
B 24600,5,1,3,1
b 24605 Game runtime data
@ 24605 label=_GAME_RUNTIME_DATA
@ 24605 label=_SPEED_FACTOR
B 24605,1,1 Speed factor, doesn't change
@ 24609 label=_EXTRA_LIFE_AWARDED
B 24606,4,1
N 24610 Barriers suppressed flag. This starts off zero so the barriers get drawn, but then goes 1 so they don't get drawn again each new screen.
@ 24610 label=_BARRIERS_SUPPRESSED
B 24610,1,1
@ 24611 label=_LIVES_REMAINING
B 24611,1,1 Number of lives player has left
@ 24613 label=_ALIENS_LANDED
B 24612,3,1
b 24615 Data block at 24615
B 24615,23,5,8*2,2
@ 24638 label=_PLAYER_XPOS
B 24638,1,1 Player ship pos, X
@ 24639 label=_PLAYER_YPOS
B 24639,1,1 Player ship pos, Y
@ 24640 label=_YPOS_ADJUST
B 24640,1,1 Player ship adjustment, -1, 0 or +1
@ 24641 label=_PLAYER_BULLET_IN_FLIGHT
@ 24642 label=_PLAYER_BULLET_XPOS
@ 24643 label=_PLAYER_BULLET_YPOS
@ 24652 label=_FIRE_PRESSED
@ 24653 label=_SPACESHIP_DIRECTION
B 24641,13,1*4,7,1
b 24654 Game initialisation data
@ 24654 label=_GAME_INIT_DATA
B 24654,1,1 Speed factor
B 24655,2,1
B 24657,1,1 Extra life has been awarded flag
B 24658,1,1 Suppress barrier drawing
B 24659,1,1
B 24660,1,1 Number of lives player starts with
B 24661,3,1
b 24664 Data block at 24664
B 24664,39,4,8*4,3
c 24703 Start of game, from LOADer and new game loop
D 24703 Used by the routine at #R25160.
@ 24703 label=start
C 24703,1 start here
C 24704,3 Game data initialisation, copies 10 bytes
C 24707,3 Clear screen pixels
C 24710,3 ???
C 24713,3 Draw lives as ships on top row
N 24716 This entry point is used by the routine at #R24919. Top of game loop?
N 24737 This entry point is used by the routine at #R24868.
C 24761,3 Lives remaining
C 24777,3 Lives remaining
C 24784,7 Have the aliens landed? Game over if they have.
N 24791 Return to top of game loop
s 24794 Storage byte for routine that follows
@ 24794 label=_UNKNOWN1
S 24794,1,1
c 24795 Routine at 24795
D 24795 Used by the routine at #R24703.
C 24795,8 Pick up storage byte Decrement it and return if it's not zero
N 24806 This entry point is used by the routine at #R24703.
c 24823 Reset game data
D 24823 Used by the routine at #R24703.
@ 24823 label=reset_game_data
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
C 24892,7 Return if a bullet is in flight
c 24908 delay_ms (approx)
D 24908 Busy wait routine, pauses around 4360 * 'A' Ts. One iteration is about 1.25ms on the 3.5MHz Z80.
R 24908 I:A Number of iterations to spin for
@ 24908 label=delay_ms
C 24909,1 11 Ts
C 24910,5 256 NOPs 4 Ts 13Ts = ~4352 Ts
c 24919 Count up to 7, no higher
D 24919 Increments the number at 24614 up to 7, but no higher. Used by the routine at #R24703.
@ 24919 label=count_to_7
C 24931,3 Jump back into game loop???
s 24934 Unused
@ 24934 label=_UNKNOWN2
S 24934,1,1
c 24935 Routine at 24935
D 24935 Used by the routines at #R24989, #R25034 and #R25643.
c 24989 Routine at 24989
D 24989 Used by the routine at #R24703.
N 25011 This entry point is used by the routine at #R25034.
C 25011,3 Print string which follows this instruction
B 25014,2,2
T 25016,6,5:n1
s 25033 Temporary store for the counter of lives remaining to draw
@ 25033 label=_DRAW_LIVES_REMAINING_COUNTER
S 25033,1,1
c 25034 Draw lives remaining on top row
D 25034 The player ship sprites are drawn and buzzed into position. This uses the same code as the regular ship drawing routine, including the ship position variables. So it needs to save the player xpos/ypos values, set them to top row and do the work, then put them back as they were.
R 25034 Used by the routines at #R24703 and #R25105.
@ 25034 label=draw_lives_remaining
C 25034,3 Select 0th row
C 25037,3 Clear it
C 25040,3 Pick up number of lives remaining
C 25043,1 We're going to draw one fewer than that
C 25044,5 Zero lives to draw, so skip drawing on the top row
C 25049,3 Stash away the counter. There's no obvious reason a PUSH AF wouldn't work here. Shrug.
C 25052,5 Current player ship pos, X and Y, stash on the stack
C 25057,4 Y=0
C 25061,5 X=72
C 25066,3 Draw a player ship and move it into position
C 25069,8 Move X along one ship's width
C 25077,7 Recover the lives to draw counter and decrement it
C 25084,2 Back to draw next ship
C 25086,5 Restore the X,Y position which is the player's ship
N 25094 This entry point is used by the routine at #R24703.
c 25105 Award extra life
D 25105 Used by the routine at #R24703.
@ 25105 label=award_extra_life
C 25105,5 Check if extra life has been awarded. You only get the one.
C 25110,9 If this goes greater than 100 then an extra life is awarded. It's not the score though.
C 25119,5 Set flag, no more extra lives
C 25124,7 Add extra life
N 25133 This entry point is used by the routine at #R25155.
C 25133,3 Pick up port 254 shadow
C 25136,2 Don't know what this is for
C 25138,2 Null out bottom 3 bits - border black
C 25140,3 Put it back
C 25143,3 Sound burbler
B 25146,9,8,1 Extra life sound
C 25155,5 Sound burbler return point
c 25160 Game over
D 25160 By the time it gets here the burbler has beeped to indicate the playe has been hit.
R 25160 Used by the routine at #R24703.
@ 25160 label=game_over
C 25160,3 Print string which follows this instruction
T 25163,35,n2:32:n1
N 25198 Return here, play siren for game over
C 25200,3 Sound burbler
B 25203,11,8,3 Data for game over siren
N 25214 Sound burbler return point
@ 25214 label=game_over_siren
C 25214,2 Repeat x25
N 25216 Wait for fire to be pressed
C 25216,3 Read keyboard
C 25219,6 Has fire pressed flag gone true? If not, loop back and read the keyboard again
C 25225,3 Jump back to start of main loop for new game
c 25228 Initialise game screen attributes
D 25228 Set screen attributes to black
D 25228 Used by the routine at #R24703.
@ 25228 label=init_attributes
C 25228,3 Pick up screen default attributes
N 25231 This entry point is used by the routine at #R25160.
C 25231,2 Mask out ink bits, leaving border same as screen paper
C 25233,3 Copy into port 254 shadow
C 25236,3 Pick up screen default attributes again
N 25239 This entry point is used by the routine at #R25160.
C 25239,3 Writing 256*3 attributes.
C 25242,3 Start of attributes, top left corner
C 25245,1 Set to A
C 25246,1 Next
N 25247 This entry point is used by the routine at #R25160.
C 25247,2 Back for next byte
N 25250 This entry point is used by the routine at #R25160.
C 25250,2 Back for next third
N 25252 Whole screen attributes have been set, there's a little beep here
C 25252,3 Sound burbler
B 25255,3,3 Tiny beep before player ship appears
N 25258 Sound burbler return point
C 25258,3 Row 1, col 0, spaceship row
C 25261,4 Spaceship colour (magenta) from here
C 25265,5 Set the full row (32 cells) to that colour
C 25270,3 Row 23, col 0, player row
C 25273,4 Player colour (white) from here
C 25277,5 Set the full row (32 cells) to that colour, then return
b 25282 Data block at 25282
@ 25282 label=_SPACESHIP_YPOS           ; Maybe, it's unused in the code
@ 25283 label=_SPACESHIP_XPOS
B 25282,160,1*2,6,8
c 25442 Routine at 25442
D 25442 Used by the routine at #R24703.
N 25537 This entry point is used by the routines at #R25592 and #R26225.
C 25541,3 Row 1
C 25544,3 Clear row
C 25547,2 Mode clear
C 25549,3 Clear sprite
C 25552,1 Mode set
C 25553,3 Draw sprite
C 25556,5 Return if no bullet in flight
c 25592 Routine at 25592
D 25592 Used by the routine at #R25442.
@ 25592 label=hit_spaceship
C 25592,6 One of these will show the score for the spaceship???
C 25598,3 Sound burbler
B 25601,21,8*2,5 Hit spaceship sound
N 25622 Sound burbler return point
C 25622,3 Row 1
C 25625,3 Clear row
c 25628 Spaceship noise
D 25628 Used by the routine at #R25442.
@ 25628 label=spaceship_noise
C 25628,3 Sound burbler
B 25631,7,7 Spaceship noise
C 25638,1 Sound burbler return point
b 25639 Data block at 25639
B 25639,4,4
c 25643 Hit spaceship
D 25643 Used by the routine at #R25592.
C 25643,3 ???
C 25647,2 Bottom 2 bits
C 25649,3 0x6427, H=100 L=39
C 25652,3 Add A to HL
C 25655,1 ???
C 25657,9 Add A to contents of 24603
c 25686 Add A to HL (1) . There are two copies of this code. . Used by the routine at #R25643.
D 25686 Used by the routine at #R25643.
@ 25686 label=add_a_to_hl_1
b 25691 Data block at 25691
B 25691,17,8*2,1
c 25708 Routine at 25708
D 25708 Used by the routine at #R24703.
c 25737 Routine at 25737
D 25737 Used by the routines at #R25708 and #R25976.
c 25749 Routine at 25749
D 25749 Used by the routine at #R25708.
C 25769,3 Player ship pos, X
C 25802,3 IX = 27327 + ( 'A' * 706 )
c 25853 Routine at 25853
D 25853 Used by the routine at #R25708.
C 25856,2 Mode clear
C 25858,3 Clear sprite
N 25875 This entry point is used by the routine at #R25994.
C 25897,1 Mode set
C 25898,3 Draw sprite
C 25905,3 Player ship pos, X
C 25917,3 Player ship pos, X
C 25922,3 Pick up port 254 shadow
C 25925,2 ???
C 25927,2 Mask out bottom 3 bits, border black
C 25929,3 Put it back
C 25932,3 Sound burbler
B 25935,9,8,1 Player hit noise
N 25944 Sound burbler return point
C 25944,2 Repeat player hit *8
C 25946,3 Clear bottom row
C 25949,3 Sound burbler
B 25952,7,7 Game over sound No, can't be, the check is below
N 25959 Sound burbler return point
C 25959,7 Lives remaining Lost life?
c 25976 Routine at 25976
D 25976 Used by the routines at #R25853 and #R26225.
N 25981 This entry point is used by the routine at #R25853.
c 25994 Routine at 25994
D 25994 Used by the routine at #R25853.
c 26001 Clear bottom character row
D 26001 Used by the routines at #R25853 and #R26225.
@ 26001 label=clear_bottom_char_row
C 26001,3 Top scan of bottom row of the screen, where the ship is
c 26004 Clear one character row
D 26004 Takes the address of the top scan byte of the leftmost char in a row of 32 chars and sets them to zero. So it clears 32 chars, 8 scans high, starting at DE.
R 26004 Used by the routines at #R25034, #R25442, #R25592, #R30995 and #R31327.
N 26004 I:DE Top scan of screen char to start clearing at
@ 26004 label=clear_char_row
C 26004,2 We're going to clear 8 scans at screen address in DE
C 26007,8 Screen width is 32 bytes, write zero into each byte
C 26015,1 Down one scan (this won't work across boundaries)
C 26016,1 Back for next scan
c 26020 Routine at 26020
D 26020 Used by the routines at #R25976 and #R26490.
N 26023 This entry point is used by the routine at #R25853.
C 26028,2 Mode clear
C 26030,3 Clear sprite
N 26033 This entry point is used by the routine at #R25853.
c 26038 Routine at 26038
D 26038 Used by the routine at #R24703.
C 26038,5 Return if no bullet in flight
c 26049 Routine at 26049
D 26049 Used by the routine at #R26038.
C 26068,3 IX = 27327 + ( 'A' * 706 )
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
B 26249,9,8,1 Alien hit sound
N 26258 Sound burbler return point
C 26288,3 Pick up port 254 shadow
C 26291,2 ???
C 26293,2 Mask out bottom 3 bits, border black
C 26295,3 Put it back
C 26298,3 Sound burbler
B 26301,9,8,1 Last alien hit sound
N 26310 Sound burbler return point
C 26315,3 Clear bottom row
c 26320 Routine at 26320
D 26320 Used by the routine at #R26225.
c 26337 Routine at 26337
D 26337 Used by the routine at #R26225.
C 26341,3 cxy2saddr: DE = screen address of char C,B
N 26355 This entry point is used by the routine at #R26225.
C 26355,3 cxy2saddr: DE = screen address of char C,B
c 26375 Routine at 26375
D 26375 Used by the routine at #R26225.
b 26459 Data block at 26459
B 26459,5,5
c 26464 Routine at 26464
D 26464 Used by the routine at #R26225.
c 26484 Add A to HL (2)
D 26484 There are two copies of this code.
D 26484 Used by the routines at #R26375 and #R26464.
@ 26484 label=add_a_to_hl_2
s 26489 Unused
S 26489,1,1
c 26490 Routine at 26490
D 26490 Used by the routine at #R26038.
N 26503 This entry point is used by the routine at #R26541.
C 26528,3 Sound burbler
B 26531,7,7 Hit alien bullet sound
C 26538,3 Sound burbler return point
c 26541 Routine at 26541
D 26541 Used by the routine at #R26490.
c 26566 Fire player bullet
D 26566 Used by the routine at #R24703.
@ 26566 label=fire_player_bullet
C 26566,3 Read keyboard
C 26572,7 Return if bullet in flight
C 26579,5 Has fire been pressed? Return if not
C 26584,3 Handle firing of bullet
c 26587 Keypress detection
D 26587 Used by the routines at #R25160 and #R26566
D 26587 Updates values at #R24640, #R24652 and #R26721
@ 26587 label=read_keyboard
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
c 26675 Redraw player ship
D 26675 If the player's ship needs to move, erase and redraw it. The ypos adjustment typically comes from the keypress routine, and will be -1 to move a pixel left, or 1 to move a pixel right. This code is used in a more contrived manner to animate a new ship when an extra life is awarded.
D 26675 Used by the routines at #R26566 and #R26965.
R 26675 O:IX #R24638
@ 26675 label=redraw_player_ship
C 26675,3 Player ship position adjustment, -1, 0 or 1
C 26678,2 Ship doesn't need to move, just return
C 26680,4 1 has an odd number of bits. -1, even. A=0 if moving right, A=1 if moving left.
C 26684,4 IX points to player ship pos, X
C 26688,3 Select sprite data based on A
C 26691,2 Mode clear
C 26693,3 Clear sprite side pixels
C 26696,1 Mode set
C 26697,3 Draw sprite side pixels
C 26700,11 Pick up adjustment again and add it to the current xpos value. Adding -1 or 1 makes it the correct position value. Then write it back out.
c 26712 Select player ship sprite data
D 26712 Set HL to #R26722 if A is 1, or #R26796 is A is 0.
D 26712 A is used to indicate whether the ship needs to move left or right. Choose the correct sprite data ready for the redraw.
R 26712 I:A 0 if player moving right, 1 if player moving left
R 26712 O:HL Sprite data address
@ 26712 label=select_player_ship_sprite
C 26716,1 Return if A=1, hence left move
C 26720,1 Return if A=0, hence right move
b 26721 Keypress routine's fire-released flag
D 26721 This is set 1 when the fire key is released. It's set 0 when the fire key is pressed. If it's found to be 0 when the fire key is read as pressed the fire-pressed flag is held at 0. In order words the fire-pressed flag will only go true when this is 1, and it's only set 1 when the fire key is found to be released
@ 26721 label=_FIRE_RELEASED
B 26721,1,1 Fire released flag, local to keypress routine
b 26722 Player ship sprite data
D 26722 Player ship sprite data. x,y pairs, each giving a single pixel Pixels to clear as sprite moves left or right. These define an edge of the sprite rather than the whole sprite itself. The edge is removed by one set of data and drawn in by the other set.
@ 26722 label=_GFX_PLAYER_SHIP_LEFT_CLEAR
@ 26759 label=_GFX_PLAYER_SHIP_LEFT_DRAW
@ 26796 label=_GFX_PLAYER_SHIP_RIGHT_CLEAR
@ 26833 label=_GFX_PLAYER_SHIP_RIGHT_DRAW
B 26722,148,7,8*3,6,2,8*4,3,5,8*8,5
N 26870 This looks like a vertical line, might be a bullet?
@ 26870 label=_GFX_BULLET
B 26870,13,1,3,8,1
c 26883 Fire pressed
D 26883 Used by the routine at #R26566.
@ 26883 label=fire_pressed
C 26883,3 Sound burbler
B 26886,7,7 Player fire sound
N 26893 Sound burbler return point
C 26893,5 Mark bullet in flight
C 26898,12 Player xpos plus half the width of the player ship is the bullet's xpos
C 26910,4 Bullet ypos starts down here
C 26914,2 Jump to draw bullet
c 26916 Draw the player bullet.
D 26916 The bullet graphic is cleared from the screen and drawn back in again. ??? Still not sure what the sub4 thing is.
R 26916 Used by the routine at #R26566.
@ 26916 label=draw_player_bullet
C 26923,2 Mode clear
C 26925,3 Clear sprite
C 26928,3 Fetch player bullet xpos
C 26931,6 ???
C 26937,3 Set player bullet xpos
N 26940 This entry point is used by the routine at #R26883.
C 26943,1 Mode set
C 26944,3 Draw sprite
c 26947 Stop player bullet
D 26947 Player bullet is cleared from screen and the flag indicating there's a bullet in flight is cleared.
D 26947 Used by the routines at #R26225, #R26538 and #R26541.
@ 26947 label=clear_player_bullet
C 26954,2 Mode clear
C 26956,3 Clear sprite
N 26959 This entry point is used by the routine at #R26916.
C 26959,4 Bullet no longer in flight
s 26964 Temporary store for where the new ship should end up at the end of the scroll animation.
@ 26964 label=_NEW_SHIP_TARGET_XPOS
S 26964,1,1
c 26965 New player ship
D 26965 Draw player ship and scroll it into position. Called with #R24638 and #R24639 holding screen location of new ship.
D 26965 Used by the routine which draws lives remaining at the top, and when the a new life appears at the bottom after dying
@ 26965 label=new_player_ship
C 26968,5 Set up adjustment of -1, which means 1 pixel left
C 26973,3 Player ship pos, X
C 26976,3 Store the final xpos (where the scroll finishes)
C 26979,2 Start 40 pixels right of final position
C 26981,6 Set player ship xpos and draw the ship there. Returns with xpos pointed to by IX.
M 26987,6 Sound burbler with move player ship sound
B 26990,3,3
N 26993 Sound burbler return point
C 26993,3 Pick up xpos where we're moving the ship to
C 26996,5 Are we there? Adjustment is still -1 so we keep going round until the ship is in place
c 27005 Routine at 27005
D 27005 Used by the routine at #R27030.
s 27029 Unused
S 27029,1,1
c 27030 Routine at 27030
D 27030 Used by the routine at #R24703.
c 27097 IX = 27327 + ( 'A' * 706 )
D 27097 Guessing this is finding an entry in an array of data structures which are 706 bytes? That would be too big for the aliens?
D 27097 27327 starts a large data block which starts off with the assembler strings and stuff, so it's being populated with some large amount of data.
D 27097 Used by the routines at #R25749, #R26049, #R30857 and #R31075.
R 27097 I:A Multiplier
R 27097 O:IX 27327 + A*706
@ 27097 label=multi_a_by_706_add_27327
C 27101,2 If A is zero no multiplication is necessary
c 27114 IX = 27127 + ( 'A' * 64 )
D 27114 Used by the routine at #R27030.
R 27114 I:A Multiplier
R 27114 O:HL 27127 + A*64
@ 27114 label=multi_a_by_64_add_27327
C 27117,2 If A is zero no multiplication is necessary
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
C 30879,3 IX = 27327 + ( 'A' * 706 )
C 30894,3 Sound burbler
B 30897,6,6 Don't know what this is
C 30903,3 ; Not sure where the sound return point is
c 30995 Move aliens down
D 30995 Aliens have got to one side of the screen, move them down row by row.
D 30995 Used by the routine at #R30857.
C 30995,3 Sound burbler
B 30998,3,3
N 31001 Sound burbler return point
C 31001,3 Lowest alien point?
C 31004,5 Row 18 is top of barriers, remove them if the aliens are that far
C 31009,3 Lowest alien point?
C 31019,3 cxy2saddr: DE = screen address of char C,B
C 31022,3 Clear one character row (32 chars)
N 31030 This entry point is used by the routine at #R31064.
@ 31046 label=aliens_landed
C 31046,5 Flag that the aliens have landed.
C 31051,3 Sound burbler
B 31054,9,3
C 31063
D 31064 Used by the routine at #R30857.
c 31075 Initialise draw aliens
D 31075 This displays the bands of aliens - from the bottom upwards it's red, bleep, red, bleep, green, bleep, green, bleep, yellow.
R 31075 Used by the routine at #R24703.
@ 31075 label=init_draw_aliens
C 31080,3 IX = 27327 + ( 'A' * 706 )
C 31089,3 Sound burbler, row of aliens appearing
B 31092,7,7
N 31099 Sound burbler return point
s 31107 Unused
S 31107,12,12
c 31119 Routine at 31119
D 31119 Used by the routines at #R26154, #R30857, #R30995 and #R31075.
c 31198 Routine at 31198
D 31198 Used by the routines at #R30995 and #R31075.
C 31220,3 cxy2saddr: DE = screen address of char C,B
c 31257 Routine at 31257
D 31257 Used by the routine at #R31198.
c 31290 Set INK colour of attributes
D 31290 Sets a number of attributes to given INK colour
R 31290 I:B first cy
R 31290 I:C first cx
R 31290 I:D Number of attributes to set
R 31290 I:E INK colour
@ 31290 label=set_attributes_xy_n
C 31290,3 Find attribute address of cy,cx in BC
C 31293,3 Clear INK in attribute cell
C 31296,1 Merge in E
C 31297,1 Set attribute cell
C 31298,1 Next cell
C 31299,1 Dec counter
c 31303 Sets 2 rows to an INK colour
D 31303 This might be setting the colour bands for the aliens?
@ 31303 label=set_attribute_band
C 31303,4 Pick up cy from here
C 31307,2 cx is 0, start of row
C 31309,3 0x6012
C 31312,3 ???
C 31320,1 Pick up INK colour from (HL)
C 31321,1 E is INK colour
C 31322,2 2 full rows
C 31324,3 Set INK colour
c 31327 Remove barriers when the aliens get low
D 31327 Clear 3 rows
D 31327 Used by the routine at #R30995.
@ 31327 label=remove_barriers
C 31327,5 If barriers are suppressed we don't need to clear them
C 31335,3 Clear one character row (32 chars)
C 31341,3 Clear one character row (32 chars)
C 31347,3 Clear one character row (32 chars)
C 31350,4 Flag need to redraw barriers next screen
C 31354,3 Sound burbler
B 31357,13,8,5
N 31370 Sound burbler return point
b 31371 UDGs which make up the barriers.
D 31371 Data block at 31371
B 31371,8,8 #HTML[#UDG31371,8(0)]
B 31379,8,8 #HTML[#UDG31379,8(1)]
B 31387,8,8 #HTML[#UDG31387,8(2)]
B 31395,8,8 #HTML[#UDG31395,8(3)]
B 31403,8,8 #HTML[#UDG31403,8(4)]
B 31411,8,8 #HTML[#UDG31411,8(5)]
t 31419 Barrier top row string
D 31419 4 UDGs which render, in the internal "font", as top row of a barrier
@ 31419 label=_BARRIER_TOP
T 31419,5,4:n1
t 31424 Barrier middle row string
D 31424 4 UDGs which render, in the internal "font", as middle row of a barrier
@ 31424 label=_BARRIER_MIDDLE
T 31424,5,4:n1
t 31429 Barrier bottom row string
D 31429 4 UDGs which render, in the internal "font", as bottom row of a barrier
@ 31429 label=_BARRIER_BOTTOM
T 31429,5,4:n1
s 31434 Unused
@ 31434 label=_DRAW_BARRIER_COUNT
S 31434,1,1
s 31435 Unused
@ 31435 label=_BARRIER_ROWS_TO_DRAW
S 31435,1,1
c 31436 Draw barriers
D 31436 The barriers are built from UDGs. Each barrier is 3 rows of chars high, and each row is printed as a string using a special "font".
D 31436 Used by the routine at #R24703.
@ 31436 label=draw_barriers
C 31436,5 Barriers suppressed flag, this has to be zero otherwise the barriers aren't drawn
C 31441,4 Stash default font address on stack
C 31445,6 Switch to the UDGs here. In theory this is the  start of the "font", but we only use UDGs starting at char '0'. Char '0' is 48 decimal, 48*8 is 384, 30987+384=#R31371
C 31451,5 We need to draw 3 barriers
C 31456,3 Y=20, X=05
C 31459,3 Sequence of UDGs which display a row of the barrier
C 31463,5 The graphic is 3 rows per barrier
C 31468,3 Draw a barrier row using the UDG printer code
C 31471,4 X=X-4
C 31475,1 Y=Y+1
C 31476,7 Barrier row drawn
C 31483,2 Back for next row
C 31486,4 Move X along 9 chars ready for next barrier
C 31490,7 One more barrier has been drawn
C 31497,2 Back to do the next one
C 31499,4 Recover default font address and put it back
C 31503,5 Barriers are drawn, flag not to redraw them.
b 31509 Data block at 31509
B 31509,18,8*2,2
c 31527 Routine at 31527
D 31527 Used by the routines at #R25853 and #R26541.
C 31527,5 Return immediately if the barriers are suppressed
C 31621,3 Sound burbler
B 31624,2,2 ???
c 31634 Set pixel
D 31634 Sets the screen pixel at x,y
D 31634 This is the entry in the jump table handled by the routine at 32374 when that code is called with A=0
R 31634 I:B ypos
R 31634 I:C xpos
@ 31634 label=pixel_set
C 31634,3 pxy2saddr of B=ypos, C=xpos
C 31637,1 Pick up screen byte
C 31638,1 Merge in the required pixel
c 31640 Clear pixel
D 31640 Clears the screen pixel at x,y
D 31640 This is the entry in the jump table handled by the routine at 32374 when that code is called with A=1
R 31640 I:B ypos
R 31640 I:C xpos
@ 31640 label=pixel_clear
C 31640,3 pxy2saddr of B=ypos, C=xpos
C 31643,1 Invert pixel map
C 31644,1 Pick up screen byte
C 31645,1 Merge out the required pixel
c 31647 XOR pixel
D 31647 XORs the screen pixel at x,y
D 31647 This is the entry in the jump table handled by the routine at 32374 when that code is called with A=2
R 31647 I:B ypos
R 31647 I:C xpos
@ 31647 label=pixel_xor
C 31647,3 pxy2saddr of B=ypos, C=xpos
C 31650,1 Toggle screen bit
C 31651,1 XOR in the required pixel
c 31653 Clear screen byte but leave pixel
D 31653 Clears the screen byte containing the screen pixel at x,y, leaving the indicated pixel on if it's already on, or off if it's already off.
D 31653 This is the entry in the jump table handled by the routine at 32374 when that code is called with A=3
R 31653 I:B ypos
R 31653 I:C xpos
@ 31653 label=pixel_clearbyte
C 31653,3 pxy2saddr of B=ypos, C=xpos
C 31656,1 Clear byte except the indicated pixel which is left
b 31658 Screen address calculation table, used by px2saddr
@ 31658 label=_PIXEL_DATA
@ 31666 label=_PX2SADDR_DATA
B 31658,264,8
c 31922 pxy2saddr
D 31922 Calculate the address of the display file byte and the pixel within it of the x,y pixel coords in C and B.
D 31922 Used by the routines at #R31634, #R31640 and #R31653.
R 31922 I:B ypos in pixels,
R 31922 I:C xpos in pixels
R 31922 O:HL display file byte address
R 31922 O:A display file byte's pixel
@ 31922 label=px2saddr
C 31922,3 Table of clever values
C 31925,3 DE is 8 bit y pos
C 31928,1 Add offset to the table
C 31929,1 H comes from that table location
C 31930,1 L is xpos
C 31931,1 Clear carry
C 31932,4 HL = HL / 2
C 31936,1 Set carry, this primes the 0x40.. display file address
C 31937,4 HL = HL /2
C 31941,1 Clear carry
C 31942,4 HL = HL / 2
C 31946,1 Result into DE for the moment
C 31947,3 Divider table
C 31950,1 xpos
C 31951,2 Bottom 3 bits - 0 to 7
C 31953,3 BC = offset into divider table
C 31956,1 Find divider table location
C 31957,1 A = pixel in the byte
C 31958,1 Restore display file address into HL
c 31960 Draw or undraw sprite
D 31960 Draws or clears a sprite using a sequence of pixel sets or clears.
D 31960 Used by the routines at #R25442, #R25853, #R26020, #R26675, #R26916 and #R26947.
R 31960 I:A Mode for pixel (0=set,1=clear,2=XOR,3=ClearByte)
R 31960 I:HL Sprite data, list of x,y offset pairs, 0xFF to end
R 31960 I:IX Pointer to xpos,ypos screen location (chars)
@ 31960 label=sprite_draw_or_clear
C 31960,3 Prime jump at 32362, consumes A
C 31963,4 Pick up next byte in sequence. x_offset End if negative number
C 31967,3 IX+0 points to xpos
C 31970,1 C=xpos + x_offset
C 31971,2 Pick up next byte in sequence. y_offset
C 31973,3 IX+1 points to ypos
C 31976,1 B=ypos + y_offset
C 31978,3 Update pixel at C,B according to input mode
C 31982,2 Go back for next pixel in the sprite data
s 31984 Data block at 31984
@ 31984 label=_BURBLER_DE_STASH
S 31984,2,2 Temp store for DE while sound burbler runs
b 31986 Data block at 31986
@ 31986 label=_BURBLER_PORT254_SHADOW
B 31986,1,1 Beeper's border protection value is stored here
c 31987 Sound burbler
D 31987 Loop over a sequence of pitch/length pairs, calling the beeper with each. The data sequence is at the caller location, so this picks it up from the return address.
D 31987 This contains the rolling border effect which accompanies the end of game siren, etc.
D 31987 It walks the sequence and stops when DE is pointing to a zero byte. It returns to that location+1
@ 31987 label=sound_burbler
C 31987,4 Save DE somewhere
C 31991,1 DE takes return address from the stack
C 31992,1 Save
C 31993,1 Save
C 31994,1 Save
C 31995,3 Pick up port 254 shadow
C 31998,2 Bottom 3 bits zero
C 32000,1 Rotate down 3 bits, sets the border colour
C 32003,2 Set the MIC bit
C 32005,3 Save result, it's picked up by the beeper routine
C 32008,1 DE was pointing to something interesting
C 32009,1 Next byte, whatever it is
C 32010,3 If it's zero we're done and DE is pointing to the location to return to
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
C 32028,1 Restore return address
C 32029,4 Put DE back as it was at entry
c 32034 Click speaker bit, causes 2 clicks separated by the given pitch
D 32034 This calls the toggle speaker routine for one click, makes a very brief delay (4 NOPs) then drops through to the toggle_speaker routine which follows to toggle the bit back again.
D 32034 The pitch is implemented in the routine this calls.
R 32034 Input:C Pitch
@ 32034 label=click_speaker
C 32034,3 Pick up saved border colour
C 32037,3 Call forward to the toggle routine then drop through and do it again
C 32040,4 13Ts delay times 4 then drop through
N 32044 Toggle speaker bit, causes a click based on the given pitch A small delay based on pitch, then toggle the speaker bit for a single click. Input:C Pitch
@ 32044 label=toggle_speaker
C 32044,1 C contains a delay factor
C 32045,1 4Ts
C 32046,1 4Ts
C 32047,1 4Ts
C 32048,2 12*C Ts delay
C 32050,4 Toggle speaker bit
b 32055 Data block at 32055
B 32055,1,1
b 32056 Message at 32056
B 32056,3,1
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
c 32254 cxy2saddr
D 32254 Screen address of top pixel row of character square at x,y.
D 32254 Used by the routines at #R26337, #R30995, #R31198 and #R32275.
R 32254 I:C xpos char
R 32254 I:B ypos char
R 32254 O:DE Screen address
@ 32254 label=cxy2saddr
C 32254,20 No idea how this is working. asm_zx_cxy2saddr in z88dk is more efficient
c 32275 Print UDG at HL to screen at BC
D 32275 Plots 8 scan bytes in the character cell at C,B from the UDG at HL. HL can point to the char set in ROM.
D 32275 Used by the routines at #R24935 and #R32307.
R 32275 I:C char xpos
R 32275 I:B char ypos
R 32275 I:HL UDG data, 8 consecutive bytes
@ 32275 label=print_udg
C 32275,3 cxy2saddr: DE = screen address of char C,B
C 32278,2 8 scans, top to bottom
C 32280,1 Pick up data byte
C 32281,1 Move to next
C 32282,1 Load into screen
C 32283,1 Move down a scan
C 32284,2 Back for next
c 32287 Clear screen pixel data
D 32287 Zeroes 6144 bytes starting at 0x4000
@ 32287 label=clear_pixels
C 32287,3 Start of screen
C 32290,2 Run this loop 24 times
C 32292,1 Zero
C 32294,1 Load zero into screen location
C 32296,3 Clear 256 bytes 24 times
c 32302 Print string at return address
D 32302 String to print follows the caller CALL instruction. Return address is popped into HL, and that's used as the location of the string. It then jumps to the instruction which follows the string.
D 32302 Used by the routines at #R24989 and #R25160.
@ 32302 label=print_string_at_caller
C 32302,1 Pick up return address, that's the data
C 32303,3 Call the string printer routine
C 32306,1 Now 'return' to the code at the end of the data
c 32307 Print positioned string at HL
D 32307 String data format is Y,X,c,c,c...
D 32307 Used by the routine at #R32302.
R 32307 I:HL Address of string
@ 32307 label=print_string_yxt_at_hl
C 32307,3 HL points to ypos,xpos. Put those in BC, incrementing HL
C 32310,1 Drop into #R32311
c 32311 Print string at HL
D 32311 This entry point is used by the routine at #R31436.
R 32311 I:B xchar
R 32311 I:C ychar
R 32311 I:HL char sequence
@ 32311 label=print_string_at_hl
C 32311,4 Pick up byte at HL, return if zero which indicates the end of the string
C 32317,3 HL = (A * 8) + (_CURRENT_FONT)
C 32320,3 Draw UDG
C 32325,1 xpos++
C 32327,2 Edge of screen?
C 32329,2 No, back for next char
C 32331,4 Move to start of next line
C 32335,2 Off bottom of screen?
C 32337,2 No, back for next char
C 32339,2 Wrap to top of screen
C 32341,2 Now back to next char
c 32343 Attribute address finder, cx,cy to attr address
D 32343 Find attribute address from cx,cy
R 32343 I:B cy
R 32343 I:C cx
R 32343 O:HL aaddr of cx,cy
@ 32343 label=cxy2aaddr
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
@ 32360 label=_UPDATE_PIXEL_TRAMPOLINE
S 32360,2,2
c 32362 Update pixel
D 32362 Jump to pre-selected display update routine primed at address 32360. This will set, clear, XOR or clear-byte of xpos,ypos in C and B
R 32362 I:B ypos
R 32362 I:C xpos
@ 32362 label=update_pixel
b 32366 This is a jump table with 4 entries.
D 32366 0x7B92, 0x7B98, 0x7B9F, 0x7BA5 31634   31640   31647   31653
@ 32366 label=_UPDATE_PIXEL_JUMP_TABLE
B 32366,8,8
c 32374 Prime pixel update
D 32374 Sets up a call to 32362 ready to update a screen pixel according to the mode passed in here.
D 32374 Select an entry from the jump table at 32366, copy the entry to the 2 bytes of storage at 32360. This primes the jump code at 32362 with A=0 31634 (set routine) A=1 31640 (clear) A=2 31647 (xor) A=3 31653 (clear byte)
R 32374 Input:A 0 to 3, mode. 0=Set, 1=Clear, 2=XOR, 3=Clear byte
@ 32374 label=prime_update_pixel_trampoline
C 32374,1 Save regs
C 32376,2 Bottom 2 bits only
C 32378,1 HL = A
C 32381,1 HL = Ax2
C 32382,3 Jump table
C 32385,1 Select the entry from input value into HL
C 32386,3 2 byte result goes here
C 32389,6 Copy 2 bytes from jump table entry to result
C 32395,1 Restore regs
c 32398 Find character
D 32398 Given a character code in A, this finds the location of that char's bytes in the font pointed to by 23606.
D 32398 The code multiplies A by 8 and adds (23606)
D 32398 Used by the routine at #R32307.
R 32398 I:A Char code ('A'=65, etc);
R 32398 O:HL Address of top scan of data
@ 32398 label=find_char
C 32399,3 A into HL
C 32402,1 x2
C 32403,1 x4
C 32404,1 x8
C 32405,5 Add on start of font address
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
