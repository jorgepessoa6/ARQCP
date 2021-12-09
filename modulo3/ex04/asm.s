.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_add_one

vec_add_one:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0 , %eax
	movl num , %ebx
	cmpl $0, %ebx
	je end
	movl ptrvec, %esi
	movl $0, %edx
	
	sum_one:
	cmpl %ebx, %edx
	je end
	
	movl (%esi), %eax
	incl %eax
	movl %eax, (%esi)
	
	addl $4, %esi
	incl %edx
	
	jmp sum_one
	
	end:
	# Restore Registers
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
