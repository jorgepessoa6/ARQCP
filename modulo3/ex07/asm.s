.section .data
	.global ptr1

.section .text
	.global decrypt
	.global encrypt

decrypt:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	
	movl $0, %eax;	   #clean eax
	movl $0, %ebx	   #clean ebx
	movl ptr1, %esi;    #moving adress stored in ptr1 to esi

	decrypt_letter:
	movb (%esi), %bl   #moving char to bl
	
	cmpb $0, %bl	  #if end of string jump to end	 
	je end
	
	cmpb $32, %bl
	je continue_compare
	
	cmpb $97, %bl	 #comparing char to a
	je add_letter
	
	subl $2, (%esi)
	incl %eax
	
	continue_compare:
	incl %esi		   #move to next char
	jmp decrypt_letter
			
	add_letter:
	movb %bl , (%esi)   #moving char to ptr1
	jmp continue_compare
	
	end:
	# Restore Registers
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret

encrypt:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	
	movl $0, %eax;	   #clean eax
	movl $0, %ebx	   #clean ebx
	movl ptr1, %esi;    #moving adress stored in ptr1 to esi

	encrypt_letter:
	movb (%esi), %bl   #moving char to bl
	
	cmpb $0, %bl	  #if end of string jump to end	 
	je end_e
	
	cmpb $32, %bl
	je continue_compare_e
	
	cmpb $97, %bl	 #comparing char to v
	je add_letter_e

	addl $2, (%esi)
	incl %eax
	
	continue_compare_e:
	incl %esi		   #move to next char
	jmp encrypt_letter
			
	add_letter_e:
	movb %bl, (%esi)   #moving char to ptr1
	jmp continue_compare_e
	
	end_e:
	# Restore Registers
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
