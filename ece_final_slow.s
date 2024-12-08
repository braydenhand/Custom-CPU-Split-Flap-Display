addi $r1, $r0, 20 # Spells ECE350
nop
nop
addi $r2, $r0, 10
nop
nop
addi $r3, $r0, 20
nop
nop
addi $r4, $r0, 145
nop
nop
addi $r5, $r0, 155
nop
nop
addi $r6, $r0, 130
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
blt $r8, $r7, wait # while r7 < 50,000,000, go back to wait
nop
nop

addi $r1, $r0, 35 # HELLO
nop
nop
addi $r2, $r0, 20
nop
nop
addi $r3, $r0, 55
nop
nop
addi $r4, $r0, 55
nop
nop
addi $r5, $r0, 70
nop
nop
addi $r6, $r0, 195 # We should save this flap for a blank flap, don't always want to be displaying 
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
blt $r8, $r7, wait2 # while r7 < 50,000,000, go back to wait
nop
nop

addi $r1, $r0, 110 # WORLD
nop
nop
addi $r2, $r0, 70
nop
nop
addi $r3, $r0, 85
nop
nop
addi $r4, $r0, 55
nop
nop
addi $r5, $r0, 15
nop
nop
addi $r6, $r0, 195 # BLANK
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
blt $r8, $r7, wait3 # while r7 < 50,000,000, go back to wait
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
blt $r8, $r7, wait4 # while r7 < 50,000,000, go back to wait
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

addi $r3, $r0, 5
nop
nop
addi $r4, $r0, 5
nop
nop
smallwait1:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r9, $r7, smallwait1 # while r7 < 5,000,000, go back to wait
nop
nop

addi $r2, $r0, 5
nop
nop
addi $r5, $r0, 5
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

addi $r1, $r0, 5
nop
nop
addi $r6, $r0, 5 
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
blt $r9, $r7, smallwait3 # while r7 < 5,000,000, go back to wait
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
blt $r8, $r7, wait4 # while r7 < 5,000,000, go back to wait
nop
nop

blt $r11, $r10, repeat # repeat this little animation 20 times
nop
nop

manual: # Can switch to manual mode by setting registers 1-6 to 1073741824.
addi $r1, $r0, 1073741824 # r1 = 1073741824
nop
nop
addi $r2, $r0, 1073741824 # r2 = 1073741824
nop
nop
addi $r3, $r0, 1073741824 # r3 = 1073741824
nop
nop
addi $r4, $r0, 1073741824 # r4 = 1073741824
nop
nop
addi $r5, $r0, 1073741824 # r5 = 1073741824
nop
nop
addi $r6, $r0, 1073741824 # r6 = 1073741824
nop
nop
bne $r0, $r21 manual
nop
nop
