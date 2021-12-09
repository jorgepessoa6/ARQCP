.section .data
	.comm	ptrvec,4 
	.global ptrvec
	.global num


.section .text
 .global vec_sum_even #   int vec_sum_even(void);
 vec_sum_even:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	
    movl $0,%eax  #inicia o somatorio a 0   
    movl ptrvec,%ebx  #move o pointer para ebx
    movl $0, %edi  #inicia o contador a 0   
     
	vec_loop: 
		
		pushl %eax
		movl (%ebx) ,%edx 
		movl %edx,even 
		call test_even 
		
		cmpl $0,%eax 
		popl %eax 
		je impar
		incl %edi 
		addl (%ebx), %eax 
		addl $4, %ebx 
		
		movl num,%ecx 
		cmp %ecx, %edi 
		jl vec_loop 
		jg fim 
		
		
   
	impar:
		addl $4, %ebx 
		incl %edi 
		movl num,%ecx 
		cmp %ecx, %edi
		jl vec_loop 
		jg fim 
	fim:
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
