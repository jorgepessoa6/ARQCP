.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_greater20

vec_greater20:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	#Save register
	pushl %ebx
	pushl %esi
	
	cmpl $0, num
	jne not_empty
	
	empty:
	movl $0, %eax
	jmp end
	
	not_empty:
	movl $0, %eax	   #clean eax
	movl $0, %ecx		#clean ecx
	movl ptrvec, %esi    #moving adress stored in ptr1 to esi
	movl ptrvec, %edx
	addl $4, %edx 
	movl num, %ebx		#moving num to edx
	search_greater20:
	
	cmpl %ebx, %ecx		#if ecx equals num
	je end
	
	cmpl $0, (%edx)
	jg increment
	
	cmpl $20, (%esi)	  #if less or equals jump to next char 
	jle next_char
	
	increment:
	incl %eax	
	
	next_char:
	addl $8, %esi		#move to next num
	addl $8, %edx
	incl %ecx
	jmp search_greater20
	
	end:
	# Restore Registers
	popl %esi
	popl %ebx

	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
