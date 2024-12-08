addi $r1, $r0, 75 # Spells ECE350
nop
nop
addi $r2, $r0, 38
nop
nop
addi $r3, $r0, 75
nop
nop
addi $r4, $r0, 544
nop
nop
addi $r5, $r0, 581
nop
nop
addi $r6, $r0, 488
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 50000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
wait:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait # while r7 < 50,000,000, go back to wait
nop
nop

addi $r1, $r0, 131 # HELLO
nop
nop
addi $r2, $r0, 75
nop
nop
addi $r3, $r0, 206
nop
nop
addi $r4, $r0, 206
nop
nop
addi $r5, $r0, 263
nop
nop
addi $r6, $r0, 750 # We should save this flap for a blank flap, don't always want to be displaying 
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 50000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
wait2:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait2 # while r7 < 50,000,000, go back to wait
nop
nop

addi $r1, $r0, 413 # WORLD
nop
nop
addi $r2, $r0, 263
nop
nop
addi $r3, $r0, 319
nop
nop
addi $r4, $r0, 206
nop
nop
addi $r5, $r0, 56
nop
nop
addi $r6, $r0, 750 # BLANK
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 50000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
wait3:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait3 # while r7 < 50,000,000, go back to wait
nop
nop

addi $r1, $r0, 0 # AAAAAAA for cool animation
nop
nop
addi $r2, $r0, 0
nop
nop
addi $r3, $r0, 0
nop
nop
addi $r4, $r0, 0
nop
nop
addi $r5, $r0, 0
nop
nop
addi $r6, $r0, 0
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 50000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
wait4:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait4 # while r7 < 50,000,000, go back to wait
nop
nop

addi $r10, $r0, 0
nop
nop
addi $r11, $r0, 20 # For this animation below
nop
nop
repeat:
nop
nop

# This is a little short wait section to make a cool animation of cycling through the letters
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r9, $r0, 5000000 # Initializes the counter completion in register 9, 5,000,000 cycles
nop
nop

addi $r3, $r0, 19
nop
nop
addi $r4, $r0, 19
nop
nop
smallwait1:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r9, smallwait1 # while r7 < 5,000,000, go back to wait
nop
nop

addi $r2, $r0, 19
nop
nop
addi $r5, $r0, 19
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
smallwait2:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r9, $r7, smallwait2 # while r7 < 5,000,000, go back to wait
nop
nop

addi $r1, $r0, 19
nop
nop
addi $r6, $r0, 19
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
smallwait3:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r9, smallwait3 # while r7 < 5,000,000, go back to wait
nop
nop

addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 5000000 # Initializes the counter completion in register 8, 5,000,000 cycles
nop
nop
wait4:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait4 # while r7 < 5,000,000, go back to wait
nop
nop
addi $r10, $r10, 1
nop
nop
blt $r10, $r11, repeat # repeat this little animation 20 times
nop
nop

