# go around once to find 0;
addi $r1, $r0, 200
nop
nop
addi $r2, $r0, 200
nop
nop
addi $r3, $r0, 200
nop
nop
addi $r4, $r0, 200
nop
nop
addi $r5 , $r0, 200
nop
nop
addi $r6 , $r0, 200
nop 
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 10000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
topwait1:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, topwait1 # while r7 < 50,000,000, go back to wait
nop
nop
addi $r1, $r0, 220
nop
nop
addi $r2, $r0, 220
nop
nop
addi $r3, $r0, 220
nop
nop
addi $r4, $r0, 220
nop
nop
addi $r5 , $r0, 220
nop
nop
addi $r6 , $r0, 220
nop 
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 10000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
topwait2:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, topwait2 # while r7 < 50,000,000, go back to wait
nop
nop
addi $r1, $r0, 200
nop
nop
addi $r2, $r0, 200
nop
nop
addi $r3, $r0, 200
nop
nop
addi $r4, $r0, 200
nop
nop
addi $r5, $r0, 200
nop
nop
addi $r6, $r0, 200
nop
nop
addi $r7, $r0, 0 # Initializes a counter in register 7
nop
nop
addi $r8, $r0, 10000000 # Initializes the counter completion in register 8, 50,000,000 cycles
nop
nop
topwait3:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, topwait3 # while r7 < 50,000,000, go back to wait
nop 
nop
addi $r1, $r0, 80 # Spells ECE350
nop
nop
addi $r2, $r0, 40
nop
nop
addi $r3, $r0, 80
nop
nop
addi $r4, $r0, 580
nop
nop
addi $r5, $r0, 620
nop
nop
addi $r6, $r0, 520
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

addi $r1, $r0, 144 # HELLO
nop
nop
addi $r2, $r0, 80
nop
nop
addi $r3, $r0, 220
nop
nop
addi $r4, $r0, 220
nop
nop
addi $r5, $r0, 280
nop
nop
addi $r6, $r0, 780 # We should save this flap for a blank flap, don't always want to be displaying 
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

addi $r1, $r0, 440 # WORLD
nop
nop
addi $r2, $r0, 270
nop
nop
addi $r3, $r0, 340
nop
nop
addi $r4, $r0, 220
nop
nop
addi $r5, $r0, 60
nop
nop
addi $r6, $r0, 780 # BLANK
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

addi $r1, $r0, 1 # AAAAAAA for cool animation
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
addi $r9, $r0, 10000 # Initializes the counter completion in register 9, 5,000,000 cycles
nop
nop
addi $r3, $r0, 20
nop
nop
addi $r4, $r0, 20
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

addi $r2, $r0, 20
nop
nop
addi $r5, $r0, 20
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
blt $r7, $r9, smallwait2 # while r7 < 5,000,000, go back to wait
nop
nop

addi $r1, $r0, 20
nop
nop
addi $r6, $r0, 20
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
addi $r8, $r0, 1000000 # Initializes the counter completion in register 8, 5,000,000 cycles
nop
nop
wait5:
nop
nop
addi $r7, $r7, 1 # r7 += 1
nop
nop
blt $r7, $r8, wait5 # while r7 < 5,000,000, go back to wait
nop
nop
addi $r10, $r10, 1
nop
nop
blt $r10, $r11, repeat # repeat this little animation 20 times
nop
nop

