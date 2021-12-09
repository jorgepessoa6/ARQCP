.section .data

.global ptrsrc
.global ptrdest
.global num


.section .text
	.global sort_without_reps
	sort_without_reps:
	
	
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for equation function

		movl $0, %eax
		movl ptrsrc, %ecx
		movl ptrdest, %edx
		movl $0, %ebx

		ciclo_sort:

			cmp num, %ebx		
			je end

			movl (%ecx), %esi	

			pushl %eax			
			pushl %ebx			
			pushl %edx			 

			call exists
			
			cmp $0, %eax		
			je inserir_vec_desc

			popl %edx			
			popl %ebx			
			popl %eax			

			addl $4, %ecx		
			
			incl %ebx			
			
			jmp ciclo_sort

		inserir_vec_desc:
			popl %edx			 
			popl %ebx			 
			popl %eax			 

			movl %esi, (%edx)		
			
			incl %eax				
			
			addl $4, %ecx			
			addl $4, %edx			
			
			incl %ebx				
			jmp ciclo_sort


	end:
		push %eax
		movl %eax, num  		
		call array_sort
		popl %eax
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer

		ret

	
	
	.global exists
	exists:
	
	
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for equation function

		movl $0, %ebx  		#contador que vai comparar com o num para ver quando acaba o ciclo
		movl ptrdest, %edx

		ciclo:
			cmp num, %ebx		
			je fim

			cmp (%edx), %esi		
			je encontrado	
			
			movl $0, %eax			

			addl $4, %edx			
			incl %ebx				
			jmp ciclo

		encontrado:
			movl $1, %eax		
			jmp fim

		fim:	
		# epilogue
		movl %ebp , % esp # restore the stack pointer (" clear " the stack )
		popl % ebp # restore the stack frame pointer
		ret 

