.section .data

.global ptrvec
.global num

.section .text
	.global count_seq

count_seq:
	
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for equation function

		movl ptrvec, %esi
		movl $0, %eax	#contador de sets 
		movl $0, %ebx	#contador que serve de comparacao para ver quando acaba o vetor 
		movl num, %ecx	#num de elementos do vetor
		subl $2, %ecx	#tira-se 2 ao numero de elementos do vetor pois vai parar a comparacao no antepenultimo 

		ciclo:
			cmp %ecx, %ebx	
			je end

			pushl %esi		

			addl $4, %esi	 

			cmp (%esi), %edx	
			jl seguinte

			popl %esi		

			incl %ebx		
			
			addl $4, %esi	
			
			jmp ciclo

	seguinte:
		movl (%esi), %edx	

		addl $4, %esi		 

		movl (%esi), %edi	
 
		cmp (%esi), %edx	
		jl contador

		popl %esi			

		addl $4, %esi		
		
		incl %ebx			
		
		jmp ciclo

	contador:
		popl %esi			

		incl %eax			
		incl %ebx			 
		
		addl $4, %esi		
		
		jmp ciclo

	
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		ret
