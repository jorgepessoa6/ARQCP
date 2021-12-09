.section .data
.global op1,op2



.section .text
 .global swapBytes #  short int swapBytes().
 swapBytes:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movw op1, %bx #mover pros registos
	movb  %bl,%ah	#poe o byte menos significativo como o mais significativo na posicao de ax(ah)
	movb %bh,%al  	# coloca o byte mais significativo na posicao do menos significatico de ax(al)
	movl %ax,op2	 #return the new short value 
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

