.section .data
	.global a
	.global b
	.global res
	.global res1

.section .text
	.global sum
	.global sub
	.global mult
	.global div
	.global mod
	.global pow2
	.global pow3

sum:
	pushl %ebp
	movl %esp, %ebp

	movl a, %ecx
	movl b, %eax
	addl %ecx, %eax

	movl %ebp, %esp
	popl %ebp
	ret

sub:
	pushl %ebp
	movl %esp, %ebp

	movl a, %ecx
	movl b, %eax
	subl %ecx, %eax

	movl %ebp, %esp
	popl %ebp
	ret

mult:
	pushl %ebp
	movl %esp, %ebp

	movl a, %ecx
	movl b, %eax
	imul %ecx, %eax

	movl %ebp, %esp
	popl %ebp
	ret

div:
	pushl %ebp
	movl %esp, %ebp

	movl a, %eax
	movl b, %ecx
	mov $0, %edx
	idiv %ecx, %eax

	movl %ebp, %esp
	popl %ebp
	ret

mod:
	pushl %ebp
	movl %esp, %ebp

	movl a, %eax
	cmp $0, %eax
	jl .L1
	jmp .L2
.L1:
	movl $0, %ebx
	subl %eax, %ebx
	movl %ebx, %eax
	jmp .L2

.L2:
	movl %ebp, %esp
	popl %ebp
	ret

pow2:
	pushl %ebp
	movl %esp, %ebp
	
	movl a, %eax
	imul %eax, %eax
	
	movl %ebp, %esp
	popl %ebp
	ret
	
pow3:
	pushl %ebp
	movl %esp, %ebp

	movl a, %eax
	movl a, %ebx
	imul %ebx, %ebx
	imul %ebx, %eax
	
	movl %ebp, %esp
	popl %ebp
	ret
