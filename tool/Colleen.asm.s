	.file	"Colleen.asm.c"
	.intel_syntax noprefix
	.text
	.globl	code
	.data
	.align 32
	.type   code, @object
	.size   code, 5394
code:
	.ascii "\t.file\t\"Colleen.asm.c\"\n\t.intel_syntax noprefix\n\t.t"
	.ascii "ext\n\t.globl\tcode\n\t.data\n$\n\t.globl\tbuf\n\t.bss\n\t.alig"
	.ascii "n 32\n\t.type\tbuf, @object\n\t.size\tbuf, 123456\nbuf:\n\t"
	.ascii ".zero\t123456\n\t.text\n\t.globl\tconcat\n\t.type\tconcat, "
	.ascii "@function\n# Second comment\nconcat:\n.LFB0:\n\t.cfi_st"
	.ascii "artproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16"
	.ascii "\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_r"
	.ascii "egister 6\n\tmov\tQWORD PTR -8[rbp], rdi\n\tmov\tDWORD P"
	.ascii "TR -12[rbp], esi\n\tjmp\t.L2\n.L4:\n\tmov\trax, QWORD PTR"
	.ascii " -8[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -8[rbp], "
	.ascii "rdx\n\tmov\tedx, DWORD PTR p.0[rip]\n\tlea\tecx, 1[rdx]\n"
	.ascii "\tmov\tDWORD PTR p.0[rip], ecx\n\tmovzx\tecx, BYTE PTR "
	.ascii "[rax]\n\tmovsx\trax, edx\n\tlea\trdx, buf[rip]\n\tmov\tBYTE"
	.ascii " PTR [rax+rdx], cl\n.L2:\n\tmov\trax, QWORD PTR -8[rbp"
	.ascii "]\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tje\t.L3\n"
	.ascii "\tmov\teax, DWORD PTR -12[rbp]\n\tlea\tedx, -1[rax]\n\tmo"
	.ascii "v\tDWORD PTR -12[rbp], edx\n\ttest\teax, eax\n\tjne\t.L4\n"
	.ascii ".L3:\n\tmov\teax, DWORD PTR p.0[rip]\n\tcdqe\n\tlea\trdx, "
	.ascii "buf[rip]\n\tmov\tBYTE PTR [rax+rdx], 0\n\tnop\n\tpop\trbp\n"
	.ascii "\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE0:\n\t.siz"
	.ascii "e\tconcat, .-concat\n\t.globl\tmy_strlen\n\t.type\tmy_str"
	.ascii "len, @function\nmy_strlen:\n.LFB1:\n\t.cfi_startproc\n\t"
	.ascii "endbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_of"
	.ascii "fset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6"
	.ascii "\n\tmov\tQWORD PTR -24[rbp], rdi\n\tmov\tDWORD PTR -4[rb"
	.ascii "p], 0\n\tjmp\t.L6\n.L7:\n\tadd\tDWORD PTR -4[rbp], 1\n.L6:"
	.ascii "\n\tmov\trax, QWORD PTR -24[rbp]\n\tlea\trdx, 1[rax]\n\tmo"
	.ascii "v\tQWORD PTR -24[rbp], rdx\n\tmovzx\teax, BYTE PTR [ra"
	.ascii "x]\n\ttest\tal, al\n\tjne\t.L7\n\tmov\teax, DWORD PTR -4[rb"
	.ascii "p]\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n"
	.ascii ".LFE1:\n\t.size\tmy_strlen, .-my_strlen\n\t.section\t.ro"
	.ascii "data\n.LC0:\n\t.string\t\"\\t.align 32\\n\"\n.LC1:\n\t.string"
	.ascii "\t\"\\t.type\\tcode, @object\\n\"\n.LC2:\n\t.string\t\"\\t.siz"
	.ascii "e\\tcode, 1234566\\n\"\n.LC3:\n\t.string\t\"code:\\n\"\n.LC4:"
	.ascii "\n\t.string\t\"\\\"\\n\"\n.LC5:\n\t.string\t\"\\t.string \\\"\"\n.LC"
	.ascii "6:\n\t.string\t\"\\t.ascii \\\"\"\n.LC7:\n\t.string\t\"\\\\\\\"\"\n.L"
	.ascii "C8:\n\t.string\t\"\\\\n\"\n.LC9:\n\t.string\t\"\\\\t\"\n.LC10:\n\t.s"
	.ascii "tring\t\"\\\\\\\\\"\n\t.text\n\t.globl\tdisplay_code\n\t.type\tdi"
	.ascii "splay_code, @function\ndisplay_code:\n.LFB2:\n\t.cfi_s"
	.ascii "tartproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 1"
	.ascii "6\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_"
	.ascii "register 6\n\tsub\trsp, 16\n\tlea\trax, code[rip]\n\tmov\tQ"
	.ascii "WORD PTR -8[rbp], rax\n\tmov\tesi, 11\n\tlea\trax, .LC0["
	.ascii "rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\t"
	.ascii "rax, .LC1[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tesi"
	.ascii ", 21\n\tlea\trax, .LC2[rip]\n\tmov\trdi, rax\n\tcall\tconca"
	.ascii "t\n\tmov\tesi, 6\n\tlea\trax, .LC3[rip]\n\tmov\trdi, rax\n\tc"
	.ascii "all\tconcat\n\tmov\tDWORD PTR -12[rbp], 0\n\tjmp\t.L10\n.L"
	.ascii "19:\n\tmov\tedx, DWORD PTR -12[rbp]\n\tmovsx\trax, edx\n\t"
	.ascii "imul\trax, rax, 1374389535\n\tshr\trax, 32\n\tsar\teax, 4"
	.ascii "\n\tmov\tecx, edx\n\tsar\tecx, 31\n\tsub\teax, ecx\n\timul\tec"
	.ascii "x, eax, 50\n\tmov\teax, edx\n\tsub\teax, ecx\n\ttest\teax, "
	.ascii "eax\n\tjne\t.L11\n\tcmp\tDWORD PTR -12[rbp], 0\n\tje\t.L12\n"
	.ascii "\tmov\tesi, 2\n\tlea\trax, .LC4[rip]\n\tmov\trdi, rax\n\tcal"
	.ascii "l\tconcat\n.L12:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmov\trd"
	.ascii "i, rax\n\tcall\tmy_strlen\n\tcmp\teax, 49\n\tjg\t.L13\n\tmov\t"
	.ascii "esi, 10\n\tlea\trax, .LC5[rip]\n\tmov\trdi, rax\n\tcall\tco"
	.ascii "ncat\n\tjmp\t.L11\n.L13:\n\tmov\tesi, 9\n\tlea\trax, .LC6[ri"
	.ascii "p]\n\tmov\trdi, rax\n\tcall\tconcat\n.L11:\n\tmov\trax, QWOR"
	.ascii "D PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, "
	.ascii "34\n\tjne\t.L14\n\tmov\tesi, 2\n\tlea\trax, .LC7[rip]\n\tmov\t"
	.ascii "rdi, rax\n\tcall\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tj"
	.ascii "mp\t.L15\n.L14:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\te"
	.ascii "ax, BYTE PTR [rax]\n\tcmp\tal, 10\n\tjne\t.L16\n\tmov\tesi,"
	.ascii " 2\n\tlea\trax, .LC8[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n"
	.ascii "\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L16:\n\tmov\trax"
	.ascii ", QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcm"
	.ascii "p\tal, 9\n\tjne\t.L17\n\tmov\tesi, 2\n\tlea\trax, .LC9[rip]\n"
	.ascii "\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD PTR -8[rbp],"
	.ascii " 1\n\tjmp\t.L15\n.L17:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmo"
	.ascii "vzx\teax, BYTE PTR [rax]\n\tcmp\tal, 92\n\tjne\t.L18\n\tmov"
	.ascii "\tesi, 2\n\tlea\trax, .LC10[rip]\n\tmov\trdi, rax\n\tcall\tc"
	.ascii "oncat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L18:\n\tm"
	.ascii "ov\trax, QWORD PTR -8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, ra"
	.ascii "x\n\tcall\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n.L15:\n\tad"
	.ascii "d\tDWORD PTR -12[rbp], 1\n.L10:\n\tmov\trax, QWORD PTR "
	.ascii "-8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tj"
	.ascii "ne\t.L19\n\tmov\tesi, 2\n\tlea\trax, .LC4[rip]\n\tmov\trdi, "
	.ascii "rax\n\tcall\tconcat\n\tnop\n\tleave\n\t.cfi_def_cfa 7, 8\n\tr"
	.ascii "et\n\t.cfi_endproc\n.LFE2:\n\t.size\tdisplay_code, .-dis"
	.ascii "play_code\n\t.globl\tdisplay\n\t.type\tdisplay, @functio"
	.ascii "n\ndisplay:\n.LFB3:\n\t.cfi_startproc\n\tendbr64\n\tpush\tr"
	.ascii "bp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmo"
	.ascii "v\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp, 8\n\tm"
	.ascii "ov\tQWORD PTR -8[rbp], rdi\n\tjmp\t.L21\n.L24:\n\tmov\trax"
	.ascii ", QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcm"
	.ascii "p\tal, 36\n\tjne\t.L22\n\tmov\teax, 0\n\tcall\tdisplay_code\n"
	.ascii "\tjmp\t.L23\n.L22:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmov\te"
	.ascii "si, 1\n\tmov\trdi, rax\n\tcall\tconcat\n.L23:\n\tadd\tQWORD "
	.ascii "PTR -8[rbp], 1\n.L21:\n\tmov\trax, QWORD PTR -8[rbp]\n\t"
	.ascii "movzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L24\n\t"
	.ascii "nop\n\tnop\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endp"
	.ascii "roc\n.LFE3:\n\t.size\tdisplay, .-display\n\t.section\t.ro"
	.ascii "data\n.LC11:\n\t.string\t\"%s\"\n\t.text\n\t.globl\tmain\n\t.ty"
	.ascii "pe\tmain, @function\n# First comment\nmain:\n.LFB4:\n\t."
	.ascii "cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_off"
	.ascii "set 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def"
	.ascii "_cfa_register 6\n\tlea\trax, code[rip]\n\tmov\trdi, rax\n"
	.ascii "\tcall\tdisplay\n\tlea\trax, buf[rip]\n\tmov\trsi, rax\n\tle"
	.ascii "a\trax, .LC11[rip]\n\tmov\trdi, rax\n\tmov\teax, 0\n\tcall\t"
	.ascii "printf@PLT\n\tmov\teax, 0\n\tpop\trbp\n\t.cfi_def_cfa 7, 8"
	.ascii "\n\tret\n\t.cfi_endproc\n.LFE4:\n\t.size\tmain, .-main\n\t.l"
	.ascii "ocal\tp.0\n\t.comm\tp.0,4,4\n\t.ident\t\"GCC: (Ubuntu 11.4"
	.ascii ".0-1ubuntu1~22.04.3) 11.4.0\"\n\t.section\t.note.GNU-s"
	.ascii "tack,\"\",@progbits\n\t.section\t.note.gnu.property,\"a\""
	.ascii "\n\t.align 8\n\t.long\t1f - 0f\n\t.long\t4f - 1f\n\t.long\t5\n"
	.ascii "0:\n\t.string\t\"GNU\"\n1:\n\t.align 8\n\t.long\t0xc0000002\n\t"
	.string ".long\t3f - 2f\n2:\n\t.long\t0x3\n3:\n\t.align 8\n4:\n"
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
# Second comment
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
	cmp	al, 36
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
# First comment
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
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
