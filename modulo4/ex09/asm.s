.section .data

.section .text

	.global calculate
	
calculate:

	# Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function


	# Save Registers
	pushl %esi
	pushl %edi

	# Parametros
	movl 8(%ebp), %esi 
	movl 12(%ebp), %edi 

	movl %esi, %eax
	
	addl %edi, %eax
	
	movl %esi, %ecx
	
	imull %edi, %ecx
	
	subl %ecx, %eax

	# Restore Registers
	popl %edi
	popl %esi

	# Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer

	ret
