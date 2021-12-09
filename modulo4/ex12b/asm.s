.section .data

.section .text
	.global activate_bit

activate_bit:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	push %ebx
	push %esi
	push %edi
	
	movl 8(%ebp), %esi
	movl 12(%ebp), %edi
	
	cmpl $1, %edi
	jg not_equal
	
	cmpl $31, %edi
	jl not_equal
	
	movl (%esi), %ebx

	# create a mask with the number 1
	movl $1, %edx

	# shift left 'pos' times the number one of the mask
	mov (%esi), %cl
	shl %cl, %edx

	# make OR bitwise on the binary number with the mask
	orl	%ebx, %edx

	# compare the value pointer by ptr with the binaryNumber
	cmpl	%ebx, (%esi)

	# if equal
	je equal
	
	not_equal:
	movl $1, %eax
	jmp end
	
	equal:
	movl $0, %eax
	
end:
	popl %edi
	popl %esi
	popl %ebx
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
