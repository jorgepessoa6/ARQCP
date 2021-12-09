.section .data
.global op1
.global op2

.equ CONST, 15


.section .text
 .global sum # int sum_v2()
 sum:

	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl op1, %ebx #place op1 in ebx
	movl op2, %ecx #place op2 in eax
	movl $CONST, %edx #place CONST in ecx

	subl %edx, %ebx #(CONST - op1)
	subl %ecx, %edx #(CONST - op2)
	
	
	
	subl %edx, %ebx #subtract ecx to ebx. Result is in ebx
	movl %ebx, %eax #move o resultado para %eax
	
	
    # epilogue
    movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
    popl %ebp # restore the previous stack frame pointer
    ret
