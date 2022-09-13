SECTION .data
	hello_string: db "Hello, World!\n", 10 ; string_len = 13
	
SECTION .text
	global _start

_start:
	mov rax, 1 		          ; tell system to write
	mov rdi, 1 		          ; 1 means stdout
	mov  rsi, hello_string  ; string adress
	mov rdx, 13 		        ; number of bytes
	syscall			            ; call system to write
	mov rax, 60		          ; tell system to exit
	xor rdi, rdi 		        ; 'return 0'
	syscall			            ; call system to exit
