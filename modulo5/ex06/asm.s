.section .data
	
.section .text
	.global locate_greater

locate_greater:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl $0, %eax
	movl $0, %ecx
	movl 8(%ebp), %esi  #esi is student
	movl 12(%ebp), %ebx #ecx	 is minimum
	movl 16(%ebp), %edi
	
	leal 4(%esi, 1), %edx

	
start:

	cmpl (%edx), %ebx
	jl add_nota
	
continue:	
	addl $4, %edx
	incl %ecx
	
	cmpl $10, %ecx
	je end
	
	jmp start

add_nota:
	pushl %ecx
	movl (%edx), %ecx
	movl %ecx, (%edi)
	popl %ecx
	incl %eax
	addl $4, %edi
	jmp continue
end:
	
	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
