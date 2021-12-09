.section .data

	.global num

.section .text 

	.global check_num

check_num:
	
		# Prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl 	num, 	%edx
		test 	$1, %edx			# checks if the lowest bit is set and if it is, the number is odd.
		jz 		number_is_even 		# jump if even = lowest bit clear = zero
		jnz 	number_is_odd		# jump if odd  = lowest bit set


	number_is_even:

		cmpl $0, %edx
		jge number_is_even_positive
		jl number_is_even_negative


	number_is_even_positive:

		movl $3, %eax
		jmp end_of_check

	number_is_even_negative:

		movl $1, %eax
		jmp end_of_check

	number_is_odd:

		cmpl $0, %edx
		jge number_is_odd_positive
		jl number_is_odd_negative
	
	number_is_odd_positive:

		movl $4, %eax
		jmp end_of_check



	number_is_odd_negative:

		movl $2, %eax
		jmp end_of_check

	end_of_check:

		# Epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
