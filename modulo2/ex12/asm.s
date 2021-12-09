.section .data
	.global A
	.global B


.section .text
	.global isMultiple 

isMultiple:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl A, %eax
	movl B, %ecx
	cmpl $0, %ecx
	je bEquals0
	cdq
	divl %ecx
	cmpl $0, %edx
	je isDivisible
	movl $0, %eax
	jmp end

	bEquals0:
	movl $0, %eax
	jmp end
	
	isDivisible:
	movl $1, %eax
	jmp end

end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
