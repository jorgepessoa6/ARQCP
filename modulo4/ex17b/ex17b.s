.global add_byte

add_byte:

	# prologue
	pushl % ebp 		# save previous stack frame pointer
	movl %esp , % ebp 	# the stack frame pointer for our function
	
	#backup callee saver
	pushl %ebx 		# callee saves %ebx before using it
	pushl %esi 		# callee saves %esi before using it
	pushl %edi		# callee saves %edi before using it
	
	
	movl 12(%ebp), %eax 		#%eax fica com o segundo parametro que é o apontador do vetor1
	
	movl (%eax), %esi 			#move o valor do primeito elemento do vetor 1 que é o numero de elementos do vetor para %esi
	
	movl 16(%ebp), %ebx 		#%ebx fica com o segundo parametro que é o apontador do vetor1	
	
	movl 8(%ebp), %edx			#%edx fica com o valor do byte x 
	
	movl $0, %edi 				#edi vai ser um contador que compara com o numero de elementos do vetor

loop:
	cmpl %edi, %esi 		#quando o vetor termina passa pro fim
	je fim     
	
    addl $4, %eax 			#passa para o proximo elemento do vetor(inteiro)
    
	movl (%eax), %ecx 		#passa o elemento do vetor para ecx 
	sarl $8, %ecx 			#shifts 8 bits para a direita , o ultimo bit à direita sofre carry
		
	addb %cl, %dl 			#adiciona o valor do byte ao %ecx
	
	movl %edx, (%ebx) 		#passa o novo valor para %ebx (vetor2)
	addl $4, %ebx 			#passa para o proximo elemento do vetor2 (inteiro)
	
	incl %edi 				#incrementa o contador que compara com o numero de elementos do vetor
	jmp loop 
	

fim:
	#restore callee saver
	popl %edi 			# calle restores %edi before ret
	popl %esi			# calle restores %esi before ret
	popl %ebx 			# calle restores %ebx before ret
	
	# epilogue
	movl %ebp , % esp 	# restore the stack pointer (" clear " the stack )
	popl % ebp 			# restore the stack frame pointer
	ret 
	
	
