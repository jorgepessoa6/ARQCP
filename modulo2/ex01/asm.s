.section .data
 .global op1
 .global op2
 .global res

.section .text
 .global sum	#void sum(void)
 sum:
	# prologue
	pushl %ebp			# save previous stack frame pointer
	movl %esp, %ebp		# the stack frame pointer for sum function
	
	movl op1, %ecx		# place op1 in ecx
	movl op2, %eax		# place op2 in eax
	addl %ecx, %eax 	# add exc to eax. Result is in eax
	
	movl %eax, res 		# copy yhe result to res
	
	# epilogue
	movl %ebp, %esp		# restore the previous stack pointer("clear" the stack)
	popl %ebp			# restore the stack frame pointer
	ret
