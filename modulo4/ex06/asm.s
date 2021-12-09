.section .data

.section .text
	.global test_equal

test_equal:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	pushl %esi
	pushl %edi
	
	movl 8(%ebp), %edi
	movl 12(%ebp), %esi
	
compare:
	movb (%edi), %cl
	movb (%esi), %ch
	cmpb %cl, %ch
	je continue
	jmp not_equal
	
	continue:
		incl %edi
		incl %esi
		cmpb $0 ,(%edi)
		je end_string
		cmpb $0, (%esi)
		je not_equal
		jmp compare
	
	end_string:
		cmpb $0, (%esi)
		jne not_equal
		movl $1, %eax
		jmp end
	
	not_equal:
		movl $0, %eax
	
end:
	popl %edi
	popl %esi
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
