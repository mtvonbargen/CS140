## Program: Largest Number / 0 = Infinity 

        .data
val1:    .word  0x7F7FFFFF  # Largest Number
	.text
        .globl  main

main:
    li $v0, 2 	# print floating service code

    li		$t0, 0
    mtc1 	$t0, $f2        # $t0 = 0;
    cvt.s.w 	$f4, $f2    # Convert the double precision number to single precision
    l.s     $f6, val1
    div.s 	$f9, $f6, $f4   # Largest Number / 0
    li 		$v0, 2		
    mfc1 	$t0, $f9
    mov.s 	$f12, $f9
    syscall

## End of file