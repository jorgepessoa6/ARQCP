.section .data
	.global num

.section .text
	.global vec_avg

vec_avg:
	
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	call vec_sum

	movl $0, %edx
	movl num, %ecx
	cmpl $0, %ecx
	je divisor_zero

	cdq
	idivl %ecx
	jmp  end

	divisor_zero:
	movl $0, %eax

	end:

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
