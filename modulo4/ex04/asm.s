.section .data

.section .text
	.global sum_smaller

sum_smaller:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	movl 8(%ebp), %eax
	movl 12(%ebp), %edx
	movl 16(%ebp), %ecx
	
	cmpl %eax, %edx
	jle num2_smaller

num1_smaller:
	movl %eax, (%ecx)
	jmp sub_num

num2_smaller:
	movl %edx, (%ecx)
	
sub_num:
	addl %edx, %eax
	
end:
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
