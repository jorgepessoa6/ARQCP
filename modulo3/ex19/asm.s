.section .data

	.global num
	.global ptrgrades
	.global ptrfreq

.section .text

	.global frequencies

frequencies:
	
	# Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function


	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi

	movl ptrfreq, %edi				# move ptrfrq to %ebx	
	movl $0, %eax			
		
	init_all_0:
	cmpl $21, %eax 
	je continue
	movl $0, (%edi)				# move 0 para o elemento apontado
	addl $4, %edi				# incrementa o apontador
	incl %eax
	jmp init_all_0
	
	continue:
	movl $0, %ecx
	movl $0, %ebx
	movl $0, %edx
	movl num, %eax
	cmpl $0, %eax
	je end
	movl ptrgrades, %esi
	movl ptrfreq, %edi

	freq:
	# check if we are at the end of the array
	cmpl %eax, %ebx
	je 	end

	movzxb (%esi), %ecx
	addl $1, (%edi, %ecx, 4)


next_number:

	# increment the pointer grades (char)
	addl 	$1, 	%esi

	# increment the counter
	incl	%ebx
	
	jmp freq

	end:

	# Restore Regsiters
	popl %edi
	popl %esi
	popl %ebx

	# Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer

	ret
