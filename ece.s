addi $r1, $r0, 20 # Spells ECE350
addi $r2, $r0, 10
addi $r3, $r0, 20
addi $r4, $r0, 145
addi $r5, $r0, 155
addi $r6, $r0, 130 
addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r8, $r0, 1000 #Initializes the counter completion in register 8, 1000 cycles
wait:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r8, $r7, wait # while r7 < 1000, go back to wait

addi $r1, $r0, 35 # HELLO
addi $r2, $r0, 20
addi $r3, $r0, 55
addi $r4, $r0, 55
addi $r5, $r0, 70
addi $r6, $r0, 195 # we should save this flap for a blank flap, don't always want to be displaying 
addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r8, $r0, 1000 #Initializes the counter completion in register 8, 1000 cycles
wait2:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r8, $r7, wait2 # while r7 < 1000, go back to wait

addi $r1, $r0, 110 # WORLD
addi $r2, $r0, 70
addi $r3, $r0, 85
addi $r4, $r0, 55
addi $r5, $r0, 15
addi $r6, $r0, 195 # BLANK
addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r8, $r0, 1000 #Initializes the counter completion in register 8, 1000 cycles
wait3:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r8, $r7, wait3 # while r7 < 1000, go back to wait

addi $r1, $r0, 0 # AAAAAAA for cool animation
addi $r2, $r0, 0
addi $r3, $r0, 0
addi $r4, $r0, 0
addi $r5, $r0, 0
addi $r6, $r0, 0
addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r8, $r0, 1000 #Initializes the counter completion in register 8, 1000 cycles
wait4:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r8, $r7, wait4 # while r7 < 1000, go back to wait

addi $r10, $r0, 0
addi $r11, $r0, 20 # for this animation below
repeat:

# this is a little short wait section to make a cool animation of cycling through the letters
addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r9, $r0, 100000 #Initializes the counter completion in register 9, 100,000 cycles

addi $r3, $r0, 5
addi $r4, $r0, 5
smallwait1:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r9, $r7, smallwait1 # while r7 < 100,000, go back to wait


addi $r2, $r0, 5
addi $r5, $r0, 5
addi $r7, $r0, 0 #Initializes a counter in register 7
smallwait2:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r9, $r7, smallwait2 # while r7 < 100,000, go back to wait

addi $r1, $r0, 5
addi $r6, $r0, 5 
addi $r7, $r0, 0 #Initializes a counter in register 7

smallwait3:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r9, $r7, smallwait3 # while r7 < 100,000, go back to wait

addi $r7, $r0, 0 #Initializes a counter in register 7
addi $r8, $r0, 100000 #Initializes the counter completion in register 8, 100,000 cycles
wait4:
nop
nop
nop
addi $r7, $r7, 1 # r7 += 1
blt  $r8, $r7, wait4 # while r7 < 100,000, go back to wait


blt $r11, $r10, repeat #repeat this little animation 20 times


manual: # can switch to manual mode by setting register 21 to anything other than 0. 
nop
nop
nop
bne $r0, $r21 manual
