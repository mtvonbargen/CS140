## Program that subtract the Largest Denormalized Number from the Smallest Normalized Number


        .data
val1:    .word  0x00800000      # Smallest Normalized Number
val2:    .word  0x007FFFFF      # Largest Denormalized Number
	.text
    .globl  main

main:
    li      $v0, 2 	# print floating service code
    lwc1 	$f5, val1
    lwc1 	$f7, val2
    sub.s 	$f12, $f5, $f7
    mfc1    $t0, $f12
    li 	$v0, 2		# print service for floating
    syscall
## End of file