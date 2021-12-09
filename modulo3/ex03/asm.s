.section .data
	.global ptr1
	.global prt2

.section .text
	.global str_copy_porto2

str_copy_porto2:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %eax;	   #clean eax
	movl $0, %ebx	   #clean ebx
	movl ptr1, %esi;    #moving adress stored in ptr1 to esi
	movl ptr2, %edi;	#moving adress stored in ptr2 to edi

	compare_letter:
	movb (%esi), %bl   #moving char to bl
	movb %bl, (%edi)   #moving char to ptr2
	
	cmpb $0, %bl	  #if end of string jump to end	 
	je end
	
	cmpb $118, %bl	 #comparing char to v
	je add_b

	cmpb $86, %bl	 #comparing char to V
	je add_B
	
	continue_compare:
	incl %esi		   #move to next char
	incl %edi 		   #move to next char
	jmp compare_letter
			
	add_b:
	movb $98, (%edi)   #moving b to ptr2
	jmp continue_compare
	
	add_B:
	movb $66, (%edi)   ##moving B to ptr2
	jmp continue_compare
	
	end:
	# Restore Registers
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
