# Title: P1-A1 Sum of Two Values			Filename: P1A1.asm
# Author: Maria Trezha Von Bargen	Date: 11/15/24
# Description: Sum of Two Stored Values
# Input:
# Output:
################# Data segment #####################
.data
        val1:   .word   100
        val2:   .word   200
        val3:   .word   0

################# Code segment #####################
.text
.globl main

main:   
        lw $t0, val1
        lw $t1, val2
        addu $t2, $t1, $t0
        sw $t2, val3

			
li $v0, 10  # Exit program
syscall
