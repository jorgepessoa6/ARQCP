.section .text
 .global activate_bits # int activate_bits (int a,int left,int right)

activate_bits:
	
	# prologue
	pushl % ebp 		# save previous stack frame pointer
	movl %esp , % ebp 	# the stack frame pointer for our function
	
	#backup callee saver
	pushl %ebx 		# callee saves %ebx before using it
	pushl %esi 		# callee saves %esi before using it
	pushl %edi		# callee saves %edi before using it	



fim:
	#restore callee saver
	popl %edi 			# calle restores %edi before ret
	popl %esi			# calle restores %esi before ret
	popl %ebx 			# calle restores %ebx before ret
	
	# epilogue
	movl %ebp , % esp 	# restore the stack pointer (" clear " the stack )
	popl % ebp 			# restore the stack frame pointer
	ret 
	
	
