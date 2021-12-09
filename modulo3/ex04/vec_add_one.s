.section .data

.global num


.section .text
 .global vec_add_one #  void vec_add_one(void)
 vec_add_one:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl num, %ecx 
	movl ptrvec,%edi	
	movl $0, %edx 
	
	loop:
		
		addl $1, (%edi) 
		
		addl $4, %edi 
		incl %edx 
		
		cmpl %ecx,%edx  
		jl loop 
		je loop_end 
		
		
	loop_end:
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
