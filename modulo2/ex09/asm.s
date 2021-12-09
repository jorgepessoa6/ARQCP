.section .data
.global A
.global B
.global C
.global D
.global res


.section .text
 .global sum_and_subtract # long long sum_and_subtract()(void)
 sum_and_subtract:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %ebx
	
	movsxb A, %eax #move A para %al
	movsxw B, %ebx #move B para %bx
	movl C, %ecx #move C para %ecx
	movl D, %edx #move D para %edx
	
	addl %ecx, %eax #soma %ecx e %eax
			
	subl %edx, %eax #subtrai %ecx a %eax
		
	addl %ebx, %eax #adiciona %edx a %eax
	movl %eax, res #move %eax para res
	cdq
	
    # epilogue
    popl %ebx
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret

