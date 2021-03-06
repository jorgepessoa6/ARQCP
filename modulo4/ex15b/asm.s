.section .data 

.section .text 
	.global greater_date
	
greater_date:
	# prologue 
	pushl %ebp # save previous stack frame pointer 
	movl %esp, %ebp # the stack frame pointer for sum function

	pushl %ebx
	pushl %esi

	movl 8(%ebp), %ebx  #ebx is date1
	movl 12(%ebp), %esi  #esi is date2

	shrl $8, %ebx
	shrl $8, %esi

	andl $0xFFFF, %esi
	andl $0xFFFF, %ebx

	cmpl %esi, %ebx
	jle maybe_year2
	jg date1

	maybe_year2:
		
		cmpl %esi, %ebx
		jl date2

	compare_month:
		movl 8(%ebp), %ebx
		movl 12(%ebp), %esi

		shrl $24, %ebx
		shrl $24, %esi

		andl $0xFF, %ebx
		andl $0xFF, %esi

		cmpl %esi, %ebx
		jle maybe_month2
		jmp date1

	maybe_month2:
		cmpl %esi, %ebx
		jl date2

	compare_day:
		movl 8(%ebp), %ebx
		movl 12(%ebp), %esi
		
		shrl $0, %ebx
		shrl $0, %esi

		andl $0xFF, %ebx
		andl $0xFF, %esi

		cmpl %esi, %ebx
		jle maybe_day2
		jmp date1

	maybe_day2:
	cmpl %esi, %ebx
	jl date2

	date1:
	movl  8(%ebp), %eax
	jmp end

	date2:
	movl 12(%ebp), %eax

	end:
	popl %esi
	popl %ebx 
	
	# epilogue 
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack) 
	popl %ebp		# restore the previous stack frame pointer 
	ret
