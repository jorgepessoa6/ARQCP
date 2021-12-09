.section .data
	.global A 
	.global B 
	.global n 

.section .text
	.global somatorioOperation 

somatorioOperation:

	#prologue
	pushl %ebp
	movl %esp, %ebp

	
	movl $0, %eax
	movl A, %eax
	mull %eax   #putting a^2 in eax/edx
	movl $0, %ecx
	movl B, %ecx  
	divl %ecx   #dividing A^2/B and putting result in eax
	movl %eax, %esi #putting result in esi for further use

	movl $0, %edi
    movl n, %edi   #moving limit to edx

	movl $0, %ebx  #ebx will be i that will be incremented
	
	movl $0, %ecx  #ecx will be register where we will store our sum

	my_loop:
	cmpl %edi, %ebx  #comparing i with n to see if the for loop has ended
	jge end_my_loop

	incl %ebx       #doing i++
	movl $0, %eax
	movl %ebx, %eax  #moving i to eax
	mull %eax  #doing i^2
	cdq
	mull %esi #doing i^2*a^2/b

	addl %eax, %ecx #summing the previous result to what is already in ecx

	jmp my_loop
	
	end_my_loop:
	movl %ecx, %eax #moving contents of ecx to eax so we can return the value     

	# epilogue
	movl %ebp, %esp
	popl %ebp
	ret
