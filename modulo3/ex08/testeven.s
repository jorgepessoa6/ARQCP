.section .data
	.global even



.section .text
 .global test_even #   int test_even(void)
 test_even:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl even, %eax 
	movl $2, %ecx 
	
	cmpl $0, %eax 
    jg positivo 
	movl $-1, %edx 
	idivl %ecx 
	cmpl $0, %edx 
	je evenNumber 
	movl $0,%eax 
	jmp fim 
	
	positivo:
		movl $0, %edx 
		idivl %ecx 
		cmpl $0, %edx 
		je evenNumber 
		movl $0,%eax 
		jmp fim 
		
	evenNumber:
	movl $1,%eax 
	jmp fim	 
	

	fim:
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
