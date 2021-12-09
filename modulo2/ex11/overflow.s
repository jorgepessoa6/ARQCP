.section .data
.global op1
.global op2
.global result1

.section .text
 .global overflow # void overflow(void)
 overflow:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl $1, %eax #coloca o valor 1 em %eax
	movl $0, %ebx #limpa %ebx
	movb op1, %bl #move op1 para %bl
	movb op2, %cl #move op2 para %cl
	addb %cl, %bl #adiciona %cl a %bl

	jno noverflow #se nao houber overflow vai para noverflow
	movl $1 , % eax #move 1 para %eax
	jmp fim #vai para o fim
	
	
	noverflow :
	movl $0 , % eax
	jmp fim #vai para o fim

	fim:
	movl %eax , result1 #coloca o valor de %eax em result1
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

