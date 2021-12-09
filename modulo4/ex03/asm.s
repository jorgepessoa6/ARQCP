.section .data

.section .text
	.global greatest

greatest:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	pushl %ebx
	
	movl 8(%ebp), %ecx
	movl 12(%ebp), %edx
	movl 16(%ebp), %ebx
	
	cmpl %ecx, %edx
	jle not_b

not_a:
	cmpl %edx, %ebx
	jge its_c
	
its_b:
	movl %edx, %eax
	jmp end
	
not_b:
	cmpl %ecx, %ebx
	jge its_c

its_a:
	movl %ecx, %eax
	jmp end

its_c:
	movl %ebx, %eax

end:
	popl %ebx
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
