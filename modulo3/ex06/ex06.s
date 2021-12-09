.section .data 

.global ptr1

# 32 - space ; 97 - 'a' em ascii

.section .text 
.global encrypt
encrypt: # function start
	
	# prologue
	pushl % ebp # save previous stack frame pointer
	movl %esp , % ebp # the stack frame pointer for our function
	
	# body
	movl ptr1 ,%esi 	
	movl $0 ,%eax 		
	jmp cnt_loop
	
	cnt_loop :
	movb (%esi) ,%cl 		
	cmpb $0 ,%cl 			
	jz cnt_loop_end 		

	cmpb $' ',%cl 			
	je if_a_or_space
	
	cmpb $'a',%cl 			
	je if_a_or_space
	
	addb $2 , (%esi)		
	incl %eax 				
	
	incl %esi 				
	jmp cnt_loop 			
	
	if_a_or_space:
	incl %esi 				
	jmp cnt_loop 
	
	
	cnt_loop_end :
	subl $1 , %eax			
	# epilogue
	movl %ebp , % esp # restore the stack pointer (" clear " the stack )
	popl % ebp # restore the stack frame pointer
	ret 
