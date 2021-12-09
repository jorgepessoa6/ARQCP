.section .data
.global op1
.global op2
.global result

.section .text
 .global test_flags # void test_flags(void)
 test_flags:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl $0, %eax #limpa %eax
	movl op1, %ebx #move op1 para %ebx
	movl op2, %ecx #move op1 para %ecx
	addl %ecx, %ebx #adiciona %ecx a %ebx
	
	
	# jump if carry
	jc output_com_carry #se houver carry vai para output_com_carry
	movl $0 , % eax #limpa %eax
	jmp fim #vai para o fim
	
	output_com_carry :
	movl $1 , % eax #coloca o valor do carry a 1
	jmp fim  #vai para o fim
	

	fim:
	
	movl %eax , result #coloca o valor de %eax em result
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

