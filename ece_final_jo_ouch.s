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