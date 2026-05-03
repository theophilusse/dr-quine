	.intel_syntax noprefix
	.text

# This program writes its own source to Grace_kid.s

.macro OPEN file, mode
	lea rdi, \file[rip]
	lea rsi, \mode[rip]
	call fopen@PLT
.endm

.macro WRITE ptr, stream
	mov rdi, \ptr
	mov rsi, \stream
	call fputs@PLT
.endm

.macro CLOSE stream
	mov rdi, \stream
	call fclose@PLT
.endm

	.globl	code
	.data
	.align 32
	.type	code, @object
	.size	code, 2152
code:
	.string	"\t.intel_syntax noprefix\n\t.text\n\n# This program writes its own source to Grace_kid.s\n\n.macro OPEN file, mode\n\tlea rdi, \\file[rip]\n\tlea rsi, \\mode[rip]\n\tcall fopen@PLT\n.endm\n\n.macro WRITE ptr, stream\n\tmov rdi, \\ptr\n\tmov rsi, \\stream\n\tcall fputs@PLT\n.endm\n\n.macro CLOSE stream\n\tmov rdi, \\stream\n\tcall fclose@PLT\n.endm\n\n\t.globl\tcode\n\t.data\n\t.align 32\n\t.type\tcode, @object\n$\n\t.section\t.rodata\nmode:\n\t.string\t\"w\"\nfname:\n\t.string\t\"Grace_kid.s\"\nshdr1:\n\t.string\t\"\\t.size\\tcode, 2152\\ncode:\\n\\t.string\\t\\\"\"\nshdr2:\n\t.string\t\"\\\"\\n\"\n\n\t.globl\tbuf\n\t.bss\n\t.align 32\n\t.type\tbuf, @object\n\t.size\tbuf, 65536\nbuf:\n\t.zero\t65536\n\n\t.text\n\t.globl\tmain\n\t.type\tmain, @function\nmain:\n\tpush rbp\n\tmov rbp, rsp\n\tsub rsp, 32\n\tlea r12, buf[rip]\n\tlea rsi, code[rip]\n\n.Lloop:\n\tmovzx eax, byte ptr [rsi]\n\ttest al, al\n\tjz .Ldone\n\tcmp al, 36\n\tjne .Lnormal\n\n\t# Write section header\n\tlea r13, shdr1[rip]\n.Lhdr1:\n\tmovzx eax, byte ptr [r13]\n\ttest al, al\n\tjz .Lencode\n\tmov byte ptr [r12], al\n\tinc r12\n\tinc r13\n\tjmp .Lhdr1\n\n.Lencode:\n\t# Re-encode code[] into buf\n\tlea r13, code[rip]\n.Lencode_loop:\n\tmovzx eax, byte ptr [r13]\n\ttest al, al\n\tjz .Lhdr2\n\tcmp al, 34\n\tje .Lenc_quote\n\tcmp al, 10\n\tje .Lenc_nl\n\tcmp al, 9\n\tje .Lenc_tab\n\tcmp al, 92\n\tje .Lenc_bs\n\tmov byte ptr [r12], al\n\tinc r12\n\tinc r13\n\tjmp .Lencode_loop\n.Lenc_quote:\n\tmov byte ptr [r12], 92\n\tinc r12\n\tmov byte ptr [r12], 34\n\tinc r12\n\tinc r13\n\tjmp .Lencode_loop\n.Lenc_nl:\n\tmov byte ptr [r12], 92\n\tinc r12\n\tmov byte ptr [r12], 110\n\tinc r12\n\tinc r13\n\tjmp .Lencode_loop\n.Lenc_tab:\n\tmov byte ptr [r12], 92\n\tinc r12\n\tmov byte ptr [r12], 116\n\tinc r12\n\tinc r13\n\tjmp .Lencode_loop\n.Lenc_bs:\n\tmov byte ptr [r12], 92\n\tinc r12\n\tmov byte ptr [r12], 92\n\tinc r12\n\tinc r13\n\tjmp .Lencode_loop\n\n.Lhdr2:\n\t# Write section footer\n\tlea r13, shdr2[rip]\n.Lhdr2_loop:\n\tmovzx eax, byte ptr [r13]\n\ttest al, al\n\tjz .Lafter_expand\n\tmov byte ptr [r12], al\n\tinc r12\n\tinc r13\n\tjmp .Lhdr2_loop\n\n.Lafter_expand:\n\tinc rsi\n\tjmp .Lloop\n\n.Lnormal:\n\tmov byte ptr [r12], al\n\tinc r12\n\tinc rsi\n\tjmp .Lloop\n\n.Ldone:\n\tmov byte ptr [r12], 0\n\n\tOPEN fname, mode\n\ttest rax, rax\n\tjz .Lend\n\tmov r13, rax\n\n\tlea rdi, buf[rip]\n\tWRITE rdi, r13\n\n\tCLOSE r13\n\n.Lend:\n\txor eax, eax\n\tleave\n\tret\n"

	.section	.rodata
mode:
	.string	"w"
fname:
	.string	"Grace_kid.s"
shdr1:
	.string	"\t.size\tcode, 2152\ncode:\n\t.string\t\""
shdr2:
	.string	"\"\n"

	.globl	buf
	.bss
	.align 32
	.type	buf, @object
	.size	buf, 65536
buf:
	.zero	65536

	.text
	.globl	main
	.type	main, @function
main:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	lea r12, buf[rip]
	lea rsi, code[rip]

.Lloop:
	movzx eax, byte ptr [rsi]
	test al, al
	jz .Ldone
	cmp al, 36
	jne .Lnormal

	# Write section header
	lea r13, shdr1[rip]
.Lhdr1:
	movzx eax, byte ptr [r13]
	test al, al
	jz .Lencode
	mov byte ptr [r12], al
	inc r12
	inc r13
	jmp .Lhdr1

.Lencode:
	# Re-encode code[] into buf
	lea r13, code[rip]
.Lencode_loop:
	movzx eax, byte ptr [r13]
	test al, al
	jz .Lhdr2
	cmp al, 34
	je .Lenc_quote
	cmp al, 10
	je .Lenc_nl
	cmp al, 9
	je .Lenc_tab
	cmp al, 92
	je .Lenc_bs
	mov byte ptr [r12], al
	inc r12
	inc r13
	jmp .Lencode_loop
.Lenc_quote:
	mov byte ptr [r12], 92
	inc r12
	mov byte ptr [r12], 34
	inc r12
	inc r13
	jmp .Lencode_loop
.Lenc_nl:
	mov byte ptr [r12], 92
	inc r12
	mov byte ptr [r12], 110
	inc r12
	inc r13
	jmp .Lencode_loop
.Lenc_tab:
	mov byte ptr [r12], 92
	inc r12
	mov byte ptr [r12], 116
	inc r12
	inc r13
	jmp .Lencode_loop
.Lenc_bs:
	mov byte ptr [r12], 92
	inc r12
	mov byte ptr [r12], 92
	inc r12
	inc r13
	jmp .Lencode_loop

.Lhdr2:
	# Write section footer
	lea r13, shdr2[rip]
.Lhdr2_loop:
	movzx eax, byte ptr [r13]
	test al, al
	jz .Lafter_expand
	mov byte ptr [r12], al
	inc r12
	inc r13
	jmp .Lhdr2_loop

.Lafter_expand:
	inc rsi
	jmp .Lloop

.Lnormal:
	mov byte ptr [r12], al
	inc r12
	inc rsi
	jmp .Lloop

.Ldone:
	mov byte ptr [r12], 0

	OPEN fname, mode
	test rax, rax
	jz .Lend
	mov r13, rax

	lea rdi, buf[rip]
	WRITE rdi, r13

	CLOSE r13

.Lend:
	xor eax, eax
	leave
	ret
