.section .data

length:
	.int 5
width:
	.int 7



.section .text
 .global getArea # int getArea(void);
 getArea:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	
	movl length, %ecx #move o valor de length para %ecx
	movl width, %eax  #move o valor de width para %eax
	imull %ecx, %eax  #multiplica %ecx com %eax
	movl %eax, result #move o resultado para a variavel result
	
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

