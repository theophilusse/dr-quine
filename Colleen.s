	.file	"Colleen.c"
	.intel_syntax noprefix
	.text
	.globl	code
	.data
	.align 32
	.type	code, @object
	.size	code, 1234566
code:
	.ascii "\t.file\t\"Colleen.c\"\n\t.intel_syntax noprefix\n\t.t"
	.ascii "ext\n\t.globl\tcode\n\t.data\n#\n\t.globl\tbuf\n\t.bss\n\t.alig"
	.ascii "n 32\n\t.type\tbuf, @object\n\t.size\tbuf, 123456\nbuf:\n\t"
	.ascii ".zero\t123456\n\t.text\n\t.globl\tconcat\n\t.type\tconcat, "
	.ascii "@function\nconcat:\n.LFB0:\n\t.cfi_startproc\n\tendbr64\n"
	.ascii "\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, "
	.ascii "-16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQW"
	.ascii "ORD PTR -8[rbp], rdi\n\tmov\tDWORD PTR -12[rbp], esi\n"
	.ascii "\tjmp\t.L2\n.L4:\n\tmov\trax, QWORD PTR -8[rbp]\n\tlea\trdx"
	.ascii ", 1[rax]\n\tmov\tQWORD PTR -8[rbp], rdx\n\tmov\tedx, DWO"
	.ascii "RD PTR p.0[rip]\n\tlea\tecx, 1[rdx]\n\tmov\tDWORD PTR p."
	.ascii "0[rip], ecx\n\tmovzx\tecx, BYTE PTR [rax]\n\tmovsx\trax,"
	.ascii " edx\n\tlea\trdx, buf[rip]\n\tmov\tBYTE PTR [rax+rdx], c"
	.ascii "l\n.L2:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYT"
	.ascii "E PTR [rax]\n\ttest\tal, al\n\tje\t.L3\n\tmov\teax, DWORD P"
	.ascii "TR -12[rbp]\n\tlea\tedx, -1[rax]\n\tmov\tDWORD PTR -12[r"
	.ascii "bp], edx\n\ttest\teax, eax\n\tjne\t.L4\n.L3:\n\tmov\teax, DW"
	.ascii "ORD PTR p.0[rip]\n\tcdqe\n\tlea\trdx, buf[rip]\n\tmov\tBYT"
	.ascii "E PTR [rax+rdx], 0\n\tnop\n\tpop\trbp\n\t.cfi_def_cfa 7, "
	.ascii "8\n\tret\n\t.cfi_endproc\n.LFE0:\n\t.size\tconcat, .-conca"
	.ascii "t\n\t.globl\tmy_strlen\n\t.type\tmy_strlen, @function\nmy"
	.ascii "_strlen:\n.LFB1:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp"
	.ascii "\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\t"
	.ascii "rbp, rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQWORD PTR -"
	.ascii "24[rbp], rdi\n\tmov\tDWORD PTR -4[rbp], 0\n\tjmp\t.L6\n.L"
	.ascii "7:\n\tadd\tDWORD PTR -4[rbp], 1\n.L6:\n\tmov\trax, QWORD "
	.ascii "PTR -24[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -24[r"
	.ascii "bp], rdx\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\t"
	.ascii "jne\t.L7\n\tmov\teax, DWORD PTR -4[rbp]\n\tpop\trbp\n\t.cfi"
	.ascii "_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE1:\n\t.size\tmy_"
	.ascii "strlen, .-my_strlen\n\t.section\t.rodata\n.LC0:\n\t.stri"
	.ascii "ng\t\"\\t.align 32\\n\"\n.LC1:\n\t.string\t\"\\t.type\\tcode, "
	.ascii "@object\\n\"\n.LC2:\n\t.string\t\"\\t.size\\tcode, 1234566\\"
	.ascii "n\"\n.LC3:\n\t.string\t\"code:\\n\"\n.LC4:\n\t.string\t\"\\\"\\n\"\n"
	.ascii ".LC5:\n\t.string\t\"\\t.string \\\"\"\n.LC6:\n\t.string\t\"\\t.a"
	.ascii "scii \\\"\"\n.LC7:\n\t.string\t\"\\\\\\\"\"\n.LC8:\n\t.string\t\"\\\\n"
	.ascii "\"\n.LC9:\n\t.string\t\"\\\\t\"\n.LC10:\n\t.string\t\"\\\\\\\\\"\n\t.te"
	.ascii "xt\n\t.globl\tdisplay_code\n\t.type\tdisplay_code, @func"
	.ascii "tion\ndisplay_code:\n.LFB2:\n\t.cfi_startproc\n\tendbr64"
	.ascii "\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6,"
	.ascii " -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\tr"
	.ascii "sp, 16\n\tlea\trax, code[rip]\n\tmov\tQWORD PTR -8[rbp],"
	.ascii " rax\n\tmov\tesi, 11\n\tlea\trax, .LC0[rip]\n\tmov\trdi, ra"
	.ascii "x\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, .LC1[rip]\n\tm"
	.ascii "ov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, .L"
	.ascii "C2[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 6\n\tle"
	.ascii "a\trax, .LC3[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tD"
	.ascii "WORD PTR -12[rbp], 0\n\tjmp\t.L10\n.L19:\n\tmov\tedx, DWO"
	.ascii "RD PTR -12[rbp]\n\tmovsx\trax, edx\n\timul\trax, rax, 13"
	.ascii "74389535\n\tshr\trax, 32\n\tsar\teax, 4\n\tmov\tecx, edx\n\ts"
	.ascii "ar\tecx, 31\n\tsub\teax, ecx\n\timul\tecx, eax, 50\n\tmov\te"
	.ascii "ax, edx\n\tsub\teax, ecx\n\ttest\teax, eax\n\tjne\t.L11\n\tcm"
	.ascii "p\tDWORD PTR -12[rbp], 0\n\tje\t.L12\n\tmov\tesi, 2\n\tlea\t"
	.ascii "rax, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n.L12:\n\tm"
	.ascii "ov\trax, QWORD PTR -8[rbp]\n\tmov\trdi, rax\n\tcall\tmy_s"
	.ascii "trlen\n\tcmp\teax, 49\n\tjg\t.L13\n\tmov\tesi, 10\n\tlea\trax,"
	.ascii " .LC5[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tjmp\t.L11\n.L"
	.ascii "13:\n\tmov\tesi, 9\n\tlea\trax, .LC6[rip]\n\tmov\trdi, rax\n"
	.ascii "\tcall\tconcat\n.L11:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmo"
	.ascii "vzx\teax, BYTE PTR [rax]\n\tcmp\tal, 34\n\tjne\t.L14\n\tmov"
	.ascii "\tesi, 2\n\tlea\trax, .LC7[rip]\n\tmov\trdi, rax\n\tcall\tco"
	.ascii "ncat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L14:\n\tmo"
	.ascii "v\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax"
	.ascii "]\n\tcmp\tal, 10\n\tjne\t.L16\n\tmov\tesi, 2\n\tlea\trax, .LC8"
	.ascii "[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD PTR -8"
	.ascii "[rbp], 1\n\tjmp\t.L15\n.L16:\n\tmov\trax, QWORD PTR -8[rb"
	.ascii "p]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 9\n\tjne\t.L17"
	.ascii "\n\tmov\tesi, 2\n\tlea\trax, .LC9[rip]\n\tmov\trdi, rax\n\tca"
	.ascii "ll\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L17"
	.ascii ":\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR"
	.ascii " [rax]\n\tcmp\tal, 92\n\tjne\t.L18\n\tmov\tesi, 2\n\tlea\trax,"
	.ascii " .LC10[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD "
	.ascii "PTR -8[rbp], 1\n\tjmp\t.L15\n.L18:\n\tmov\trax, QWORD PTR"
	.ascii " -8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, rax\n\tcall\tconcat\n\ta"
	.ascii "dd\tQWORD PTR -8[rbp], 1\n.L15:\n\tadd\tDWORD PTR -12[r"
	.ascii "bp], 1\n.L10:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\tea"
	.ascii "x, BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L19\n\tmov\tesi,"
	.ascii " 2\n\tlea\trax, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n"
	.ascii "\tnop\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n"
	.ascii ".LFE2:\n\t.size\tdisplay_code, .-display_code\n\t.globl"
	.ascii "\tdisplay\n\t.type\tdisplay, @function\ndisplay:\n.LFB3:"
	.ascii "\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_"
	.ascii "offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_"
	.ascii "def_cfa_register 6\n\tsub\trsp, 8\n\tmov\tQWORD PTR -8[r"
	.ascii "bp], rdi\n\tjmp\t.L21\n.L24:\n\tmov\trax, QWORD PTR -8[rb"
	.ascii "p]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 35\n\tjne\t.L2"
	.ascii "2\n\tmov\teax, 0\n\tcall\tdisplay_code\n\tjmp\t.L23\n.L22:\n\t"
	.ascii "mov\trax, QWORD PTR -8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, r"
	.ascii "ax\n\tcall\tconcat\n.L23:\n\tadd\tQWORD PTR -8[rbp], 1\n.L"
	.ascii "21:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE P"
	.ascii "TR [rax]\n\ttest\tal, al\n\tjne\t.L24\n\tnop\n\tnop\n\tleave\n\t"
	.ascii ".cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE3:\n\t.size"
	.ascii "\tdisplay, .-display\n\t.section\t.rodata\n.LC11:\n\t.str"
	.ascii "ing\t\"%s\"\n\t.text\n\t.globl\tmain\n\t.type\tmain, @functio"
	.ascii "n\nmain:\n.LFB4:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n"
	.ascii "\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\tr"
	.ascii "bp, rsp\n\t.cfi_def_cfa_register 6\n\tlea\trax, code[ri"
	.ascii "p]\n\tmov\trdi, rax\n\tcall\tdisplay\n\tlea\trax, buf[rip]\n"
	.ascii "\tmov\trsi, rax\n\tlea\trax, .LC11[rip]\n\tmov\trdi, rax\n\t"
	.ascii "mov\teax, 0\n\tcall\tprintf@PLT\n\tmov\teax, 0\n\tpop\trbp\n\t"
	.ascii ".cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE4:\n\t.size"
	.ascii "\tmain, .-main\n\t.local\tp.0\n\t.comm\tp.0,4,4\n\t.ident\t\""
	.ascii "GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0\"\n\t.sect"
	.ascii "ion\t.note.GNU-stack,\"\",@progbits\n\t.section\t.note.g"
	.ascii "nu.property,\"a\"\n\t.align 8\n\t.long\t1f - 0f\n\t.long\t4f"
	.ascii " - 1f\n\t.long\t5\n0:\n\t.string\t\"GNU\"\n1:\n\t.align 8\n\t.lo"
	.ascii "ng\t0xc0000002\n\t.long\t3f - 2f\n2:\n\t.long\t0x3\n3:\n\t.al"
	.string "ign 8\n4:\n"

	.globl	buf
	.bss
	.align 32
	.type	buf, @object
	.size	buf, 123456
buf:
	.zero	123456
	.text
	.globl	concat
	.type	concat, @function
concat:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	jmp	.L2
.L4:
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	mov	edx, DWORD PTR p.0[rip]
	lea	ecx, 1[rdx]
	mov	DWORD PTR p.0[rip], ecx
	movzx	ecx, BYTE PTR [rax]
	movsx	rax, edx
	lea	rdx, buf[rip]
	mov	BYTE PTR [rax+rdx], cl
.L2:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	je	.L3
	mov	eax, DWORD PTR -12[rbp]
	lea	edx, -1[rax]
	mov	DWORD PTR -12[rbp], edx
	test	eax, eax
	jne	.L4
.L3:
	mov	eax, DWORD PTR p.0[rip]
	cdqe
	lea	rdx, buf[rip]
	mov	BYTE PTR [rax+rdx], 0
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	concat, .-concat
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L7:
	add	DWORD PTR -4[rbp], 1
.L6:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L7
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	my_strlen, .-my_strlen
	.section	.rodata
.LC0:
	.string	"\t.align 32\n"
.LC1:
	.string	"\t.type\tcode, @object\n"
.LC2:
	.string	"\t.size\tcode, 1234566\n"
.LC3:
	.string	"code:\n"
.LC4:
	.string	"\"\n"
.LC5:
	.string	"\t.string \""
.LC6:
	.string	"\t.ascii \""
.LC7:
	.string	"\\\""
.LC8:
	.string	"\\n"
.LC9:
	.string	"\\t"
.LC10:
	.string	"\\\\"
	.text
	.globl	display_code
	.type	display_code, @function
display_code:
.LFB2:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	lea	rax, code[rip]
	mov	QWORD PTR -8[rbp], rax
	mov	esi, 11
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	concat
	mov	esi, 21
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	concat
	mov	esi, 21
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	concat
	mov	esi, 6
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	concat
	mov	DWORD PTR -12[rbp], 0
	jmp	.L10
.L19:
	mov	edx, DWORD PTR -12[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 4
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 50
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L11
	cmp	DWORD PTR -12[rbp], 0
	je	.L12
	mov	esi, 2
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	concat
.L12:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	my_strlen
	cmp	eax, 49
	jg	.L13
	mov	esi, 10
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	concat
	jmp	.L11
.L13:
	mov	esi, 9
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	concat
.L11:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 34
	jne	.L14
	mov	esi, 2
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L15
.L14:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 10
	jne	.L16
	mov	esi, 2
	lea	rax, .LC8[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L15
.L16:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 9
	jne	.L17
	mov	esi, 2
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L15
.L17:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 92
	jne	.L18
	mov	esi, 2
	lea	rax, .LC10[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L15
.L18:
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
.L15:
	add	DWORD PTR -12[rbp], 1
.L10:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L19
	mov	esi, 2
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	concat
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	display_code, .-display_code
	.globl	display
	.type	display, @function
display:
.LFB3:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 8
	mov	QWORD PTR -8[rbp], rdi
	jmp	.L21
.L24:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	jne	.L22
	mov	eax, 0
	call	display_code
	jmp	.L23
.L22:
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
.L23:
	add	QWORD PTR -8[rbp], 1
.L21:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L24
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	display, .-display
	.section	.rodata
.LC11:
	.string	"%s"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	lea	rax, code[rip]
	mov	rdi, rax
	call	display
	lea	rax, buf[rip]
	mov	rsi, rax
	lea	rax, .LC11[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.local	p.0
	.comm	p.0,4,4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
