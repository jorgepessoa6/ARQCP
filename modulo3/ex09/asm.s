.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global vec_search

vec_search:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	pushl %edi
	
	cmpl $0, num
	jne not_empty
	
	empty:
	movl $0, %eax
	jmp end
	
	not_empty:
	movl $0, %eax	   #clean eax
	movl $0, %ebx	   #clean ebx
	movl $0, %ecx	   #clean ecx
	movl $0, %edi	   #clean edi
	movl ptrvec, %esi    #moving adress stored in ptr1 to esi
	movl num, %ebx
	movw x, %cx

	search_number:
	movw (%esi), %dx   #moving char to bl
	cmpw %cx, %dx	  #if x equals jump to end	 
	je set_return
	
	cmpl %ebx, %eax		#if eax equals num
	je empty
	
	addl $2, %edi
	addl $1, %eax
	addl $2, %esi
	jmp search_number
	
	set_return:
	movl ptrvec, %ebx
	addl %edi, %ebx
	movl %ebx, %eax
	
	end:
	# Restore Registers
	popl %edi
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
