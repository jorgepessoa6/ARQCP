.section .data

	# Global Variables
	.global s1
	.global s2
	
	 s1: .short 0x1;
	 s2: .short 0x1;

.section .text 

	.global crossSumBytes

crossSumBytes:
	
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	# Save Register
	pushl %ebx

	movl	$0,					%eax
	movw	s1, 				%ax
	movw	s2,					%bx
	addb 	%bh, 				%al 
	addb	%bl, 				%ah
	
	# Restore Register
	popl %ebx 
	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
