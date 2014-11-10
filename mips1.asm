start : lui $t1, 0x0000
	ori $t1, 0x0001 # constant 1
	lui $t0, 0x1002 # DIP address before offset
	ori $t0, 0x8001
	lw  $t4, 0x7fff($t0) # DIP address 0x10030000 = 0x10028001 + 0x7fff
	lui $t0, 0x1002 # LED address before offset
	ori $t0, 0x0001
loop: 	lui $t3, 0x0004
	sll $t2, $t3, 0x0006
	srl $t2, $t2, 0x000A
	sra $t2, $t2, 0x000C
delay1: sub $t2, $t2, $t1 
	slt $t3, $t2, $t1
	beq $t3, $zero, delay1
	lui $t3, 0x0004
	sll $t2, $t3, 0x0006
	srl $t2, $t2, 0x000A
	sra $t2, $t2, 0x000C
delay2: sub $t2, $t2, $t1
	sub $t3, $t1, $t2
	bgez $t3, delay2
	sw  $t4, 0xffffffff($t0)	# LED address 0x10020000 = 0x10020001 + 0xffffffff.
	nor $t4, $t4, $zero
j loop # infinite loop; n*3 (delay instructions) + 5 (non-delay instructions).
