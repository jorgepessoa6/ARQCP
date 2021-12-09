.section .data
	.global code
	.global currentSalary

.section .text
	.global newSalary

newSalary:
	pushl %ebp
	movl %esp, %ebp

	movl code, %edx
	movl $10, %eax
	cmp %eax, %edx
	je .L10
	movl $11, %eax
	cmp %eax, %edx
	je .L11
	movl $12, %eax
	cmp %eax, %edx
	je .L12
	jmp .L13
	

.L10:
	movl currentSalary, %eax
	addl $300, %eax
	jmp .L14

.L11: 
	movl currentSalary, %eax
	addl $250, %eax
	jmp .L14

.L12:
	movl currentSalary, %eax
	addl $150, %eax
	jmp .L14

.L13: 	
	movl currentSalary, %eax
	addl $100, %eax
	jmp .L14

.L14:
	movl %ebp, %esp
	popl %ebp
	ret
