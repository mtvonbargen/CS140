 .data
        val1:   .word 32767             # Max Signed Short
        val2:   .word -32768            # Min Signed Short
        val3:   .word 2147483647        # Max Signed Int
        val4:   .word -2147483648       # Min Signed Int
        val5:   .word 2147483647        # Max Signed Long
        val6:   .word -2147483648       # Min Signed Long
        val7:   .word 65535             # Max Unsigned Short
        val8:   .word 2147483647        # Max Unsigned Int

 .text
        .globl main
main:   lw $t0, val1    # $t0 is 32767
        lw $t1, val2    # $t1 is -32768
        lw $t2, val3    # $t2 is 2147483647
        lw $t3, val4    # $t3 is -2147483648
        lw $t4, val5    # $t4 is 2147483647
        lw $t5, val6    # $t5 is -2147483648
        lw $t6, val7    # $t6 is 65535
        lw $t7, val8    # $t7 is 2147483647
