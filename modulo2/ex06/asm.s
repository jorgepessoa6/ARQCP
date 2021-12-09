.section .data
	.global byte1
	.global byte2
	
.section .text 

	.global concatBytes

concatBytes:
	
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function

	movl	$0,			%eax	 # clear eax
	movb	byte1,		%al # move first byte to  ah
	movb	byte2,		%ah # move second byte to  al
	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
