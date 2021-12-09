.section .data

.global ptrdest 
.global num


.section .text
 .global array_sort #  void array_sort(void)
 array_sort:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
		
	movl num,%ecx
    subl $1 ,%ecx
	movl ptrdest,%ebx
    
	vec_loop:
		movl %ebx , %edx 
		addl $4 , %edx 
		pushl %ecx
		
	loop1:
		movl (%edx) , %edi 
		cmpl (%ebx) , %edi 
		jle troca # Se o valor de edi for menor, troca
		
		ponto_cont:
			addl $4 , %edx 
			loop loop1
		
		addl $4 ,%ebx 
		popl %ecx 
		loop vec_loop
		jmp fim
		
	troca: 
		movl (%ebx) , %esi 
		movl %edi , (%ebx) 
		movl %esi , (%edx) 
		jmp ponto_cont

	fim:
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret



