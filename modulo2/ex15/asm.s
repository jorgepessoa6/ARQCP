.section .data
.global A
.global B
.global C
.global D
.global res


.section .text
 .global compute # void compute(void)
 compute:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	
	movl A, %ebx   #move o valor de A para %ebx
	movl B, %ecx   #move o valor de B para %ecx
	imull %ecx, %ebx   #multiplica o valor de A e de B, guarda o resultado em %ebx
	
	movl %ebx,%eax    #move o valor de %ebx para %eax
	addl C, %eax   #adiciona o valor de C a %eax

	movl D, %edi   #move D para %edi
	movl $0, %edx   #limpa o registo %edx
	cdq
	idivl %edi   #dividia o valor da posicao %eax por %edi
	
	movl %eax, res   #move o valor de %eax para a variaval res
	
    # epilogue
    
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

