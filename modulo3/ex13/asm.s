.section .data

	.global ptrvec
	.global num

.section .text

	.global keep_positives

keep_positives:
	
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl num, %edx 	#move num to edx
	movl $0, %ecx 	#clean ecx
	movl ptrvec, %esi 	# move the pointer to esi

start_loop:

	cmpl %edx, %ecx # check if we are at the end of the array
	je 	end

	movl (%esi), %edi # move the first number of the array to edi
	
	cmpl $0, %edi 	# check is number is positive
	jge next_number

	movl	%ecx, 	(%esi) 	# change the number to index if it is negative 


next_number:

	addl $4, %esi #move to next number
	incl %ecx 	# increment the counter
	jmp start_loop

end:

	# Restore Registers
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
