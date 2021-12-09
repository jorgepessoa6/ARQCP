.section .data
.global op1,op3


.section .text
 .global crossSumBytes # short int crossSumBytes()
 crossSumBytes:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movw op1, %ax
	movw op3,%bx
	addb %bh , %al # soma a posiçao mais significante do bx com a menos significante do ax 
	addb %bl , %ah # soma a posiçao menos significante do bx com a mais significante do ax
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

