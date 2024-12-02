# Title: P1-2 Assignment		       Filename: P1A2.asm
# Author: Maria Trezha Von Bargen      Date: 11/15/24
# Description: Assign the values into the Array
# Input:
# Output:
################# Data segment #####################
.data
        num:    .space 12   # allocate 12 bytes of space for num
        total:  .word 100    
################# Code segment #####################
.text
.globl main
main:
        la $t0, num         # load (memory) address of 'num' into $t0
        lw $t1, total       # load the value of 'total' into $t1
        sw $t1, 0($t0)      # store the value of $t1 (100) at offset 0 of 'num'
        addi $t1, $t1, 1    # add 1 to the value in $t1 (100), and save it in $t1 (new = 101)
        sw $t1, 4($t0)      # store the value of $t1 (101) at offset 4 of 'num'
        addi $t1, $t1, 1    # add 1 to the value in $t1 (101), and save it in $t1 (new = 102)
        sw $t1, 8($t0)      # store the value of $t1 (102) at offset 8 of 'num'
			
li $v0, 10  # Exit program
syscall
