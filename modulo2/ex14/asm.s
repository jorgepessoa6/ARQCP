.section .data
	.global height
	.global base
	
	height: .int 10 
	base: .int 10

.section .text
	.global getArea

getArea:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function

	movl $0, %eax
	movl $0, %ecx
	movl height, %ecx
	movl base, %eax

	mull %ecx	#doing height*base

	movl $0, %ecx
	movl $2, %ecx

	divl %ecx   #doing height*base/2

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
