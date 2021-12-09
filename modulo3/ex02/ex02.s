.section .data

.global ptr1
.global ptr2


.section .text

.global str_copy_porto

# b-98 ; v-118 codigo ascii

str_copy_porto:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	

	movl ptr1, %esi
	movl ptr2, %edi
	
	str_loop :
	movb (% esi ) ,%cl	 
	movb %cl ,(%edi) 	
	
	cmpb $0 ,%cl 		
	jz str_loop_end 	
	
	cmpb $98, %cl  		
	je b_para_v			
	#movb %cl, (%edi)	 
	
	incl %esi		    
	incl %edi 			
	jmp str_loop 		
	
	b_para_v:
	movb $118, (%edi)	
	incl %esi		    
	incl %edi			
	jmp str_loop
	
	
	str_loop_end:
	# epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
	
