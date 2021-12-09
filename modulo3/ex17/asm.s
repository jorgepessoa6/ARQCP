.section .data
	.global ptrvec
	.global num


.section .text
	.global array_sort

array_sort:

	# Prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %ebx  #ebx will be j
	movl $0, %edx #edx will be j+1 
	movl $0, %eax
	movl num, %ecx  #check if empty array
	cmpl $0, %ecx
	je end

	movl ptrvec, %esi
	decl %ecx

	sort:
		cmpl $0, %ecx
		je end
		movl $0, %ebx
		movl $1, %edx
		push %ecx
		sort_2:

			leal (%esi, %ebx, 4), %edi  #putting arr[j] in edi
			movl (%edi), %eax
			push %eax 
			leal (%esi, %edx, 4), %eax  #putting arr[j+1] in eax
			movl (%eax), %edi
			pop %eax 

			cmpl %eax, %edi             #doing if arr[j]>arr[i]
			jl no_switch
				
			movl %edi, (%esi, %ebx, 4)
			movl %eax, (%esi, %edx, 4)
				

			no_switch:
				incl %ebx          #increasing j
				incl %edx		   #incrasing j+1

				decl %ecx
				cmp $0, %ecx

			jne sort_2
		
		pop %ecx
		decl %ecx
		jmp sort

	end:
	
	# Restore Registers
	popl %edi
	popl %esi
	popl %ebx
	
	# Epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
