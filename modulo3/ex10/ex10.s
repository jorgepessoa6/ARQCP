.section .data
	.global ptr1
	.global ptr2
	.global ptr3

.section .text
	.global str_cat
	
str_cat:

	# prologue
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	
	movl ptr1,%esi    
	movl ptr2,%ebx
	movl ptr3,%edi
	
	movl $0,%eax
	jmp concatena_primeira 
	
concatena_primeira:
	movb (%esi), %cl
	movb %cl, (%edi)
	cmpb $0, %cl		 
	je concatena_segunda			
	incl %eax           
	incl %esi       	
	incl %edi			
	jmp concatena_primeira
	
concatena_segunda:
	movb (%ebx), %cl
	movb %cl, (%edi)
	cmpb $0, %cl		
	je fim				
	incl %eax       	
	incl %ebx       	
	incl %edi			
	jmp concatena_segunda

fim:
	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret 
