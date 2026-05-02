	.file	"Grace_asm.c"
	.intel_syntax noprefix
	.text
	.globl	code
	.data
	.align 32
	.type	code, @object
	.size	code, 1234566
code:
	.ascii "\t.file\t\"Grace_asm.c\"\n\t.intel_syntax noprefix\n\t.tex"
	.ascii "t\n\t.globl\tcode\n\t.data\n#\n\t.globl\tbuf\n\t.bss\n\t.align "
	.ascii "32\n\t.type\tbuf, @object\n\t.size\tbuf, 123456\nbuf:\n\t.z"
	.ascii "ero\t123456\n\t.text\n\t.globl\tconcat\n\t.type\tconcat, @f"
	.ascii "unction\nconcat:\n.LFB0:\n\t.cfi_startproc\n\tendbr64\n\tp"
	.ascii "ush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -1"
	.ascii "6\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQWOR"
	.ascii "D PTR -8[rbp], rdi\n\tmov\tDWORD PTR -12[rbp], esi\n\tj"
	.ascii "mp\t.L2\n.L4:\n\tmov\trax, QWORD PTR -8[rbp]\n\tlea\trdx, "
	.ascii "1[rax]\n\tmov\tQWORD PTR -8[rbp], rdx\n\tmov\tedx, DWORD"
	.ascii " PTR p.0[rip]\n\tlea\tecx, 1[rdx]\n\tmov\tDWORD PTR p.0["
	.ascii "rip], ecx\n\tmovzx\tecx, BYTE PTR [rax]\n\tmovsx\trax, e"
	.ascii "dx\n\tlea\trdx, buf[rip]\n\tmov\tBYTE PTR [rax+rdx], cl\n"
	.ascii ".L2:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE "
	.ascii "PTR [rax]\n\ttest\tal, al\n\tje\t.L3\n\tmov\teax, DWORD PTR"
	.ascii " -12[rbp]\n\tlea\tedx, -1[rax]\n\tmov\tDWORD PTR -12[rbp"
	.ascii "], edx\n\ttest\teax, eax\n\tjne\t.L4\n.L3:\n\tmov\teax, DWOR"
	.ascii "D PTR p.0[rip]\n\tcdqe\n\tlea\trdx, buf[rip]\n\tmov\tBYTE "
	.ascii "PTR [rax+rdx], 0\n\tnop\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n"
	.ascii "\tret\n\t.cfi_endproc\n.LFE0:\n\t.size\tconcat, .-concat\n"
	.ascii "\t.globl\tmy_strlen\n\t.type\tmy_strlen, @function\nmy_s"
	.ascii "trlen:\n.LFB1:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t"
	.ascii ".cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trb"
	.ascii "p, rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQWORD PTR -24"
	.ascii "[rbp], rdi\n\tmov\tDWORD PTR -4[rbp], 0\n\tjmp\t.L6\n.L7:"
	.ascii "\n\tadd\tDWORD PTR -4[rbp], 1\n.L6:\n\tmov\trax, QWORD PT"
	.ascii "R -24[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -24[rbp"
	.ascii "], rdx\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tjn"
	.ascii "e\t.L7\n\tmov\teax, DWORD PTR -4[rbp]\n\tpop\trbp\n\t.cfi_d"
	.ascii "ef_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE1:\n\t.size\tmy_st"
	.ascii "rlen, .-my_strlen\n\t.section\t.rodata\n.LC0:\n\t.string"
	.ascii "\t\"\\t.align 32\\n\"\n.LC1:\n\t.string\t\"\\t.type\\tcode, @o"
	.ascii "bject\\n\"\n.LC2:\n\t.string\t\"\\t.size\\tcode, 1234566\\n\""
	.ascii "\n.LC3:\n\t.string\t\"code:\\n\"\n.LC4:\n\t.string\t\"\\\"\\n\"\n.L"
	.ascii "C5:\n\t.string\t\"\\t.string \\\"\"\n.LC6:\n\t.string\t\"\\t.asc"
	.ascii "ii \\\"\"\n.LC7:\n\t.string\t\"\\\\\\\"\"\n.LC8:\n\t.string\t\"\\\\n\"\n"
	.ascii ".LC9:\n\t.string\t\"\\\\t\"\n.LC10:\n\t.string\t\"\\\\\\\\\"\n\t.text"
	.ascii "\n\t.globl\tdisplay_code\n\t.type\tdisplay_code, @functi"
	.ascii "on\ndisplay_code:\n.LFB2:\n\t.cfi_startproc\n\tendbr64\n\t"
	.ascii "push\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -"
	.ascii "16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp"
	.ascii ", 16\n\tlea\trax, code[rip]\n\tmov\tQWORD PTR -8[rbp], r"
	.ascii "ax\n\tmov\tesi, 11\n\tlea\trax, .LC0[rip]\n\tmov\trdi, rax\n"
	.ascii "\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, .LC1[rip]\n\tmov"
	.ascii "\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, .LC2"
	.ascii "[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 6\n\tlea\t"
	.ascii "rax, .LC3[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tDWO"
	.ascii "RD PTR -12[rbp], 0\n\tjmp\t.L10\n.L19:\n\tmov\tedx, DWORD"
	.ascii " PTR -12[rbp]\n\tmovsx\trax, edx\n\timul\trax, rax, 1374"
	.ascii "389535\n\tshr\trax, 32\n\tsar\teax, 4\n\tmov\tecx, edx\n\tsar"
	.ascii "\tecx, 31\n\tsub\teax, ecx\n\timul\tecx, eax, 50\n\tmov\teax"
	.ascii ", edx\n\tsub\teax, ecx\n\ttest\teax, eax\n\tjne\t.L11\n\tcmp\t"
	.ascii "DWORD PTR -12[rbp], 0\n\tje\t.L12\n\tmov\tesi, 2\n\tlea\tra"
	.ascii "x, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n.L12:\n\tmov"
	.ascii "\trax, QWORD PTR -8[rbp]\n\tmov\trdi, rax\n\tcall\tmy_str"
	.ascii "len\n\tcmp\teax, 49\n\tjg\t.L13\n\tmov\tesi, 10\n\tlea\trax, ."
	.ascii "LC5[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tjmp\t.L11\n.L13"
	.ascii ":\n\tmov\tesi, 9\n\tlea\trax, .LC6[rip]\n\tmov\trdi, rax\n\tc"
	.ascii "all\tconcat\n.L11:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovz"
	.ascii "x\teax, BYTE PTR [rax]\n\tcmp\tal, 34\n\tjne\t.L14\n\tmov\te"
	.ascii "si, 2\n\tlea\trax, .LC7[rip]\n\tmov\trdi, rax\n\tcall\tconc"
	.ascii "at\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L14:\n\tmov\t"
	.ascii "rax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n"
	.ascii "\tcmp\tal, 10\n\tjne\t.L16\n\tmov\tesi, 2\n\tlea\trax, .LC8[r"
	.ascii "ip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD PTR -8[r"
	.ascii "bp], 1\n\tjmp\t.L15\n.L16:\n\tmov\trax, QWORD PTR -8[rbp]"
	.ascii "\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 9\n\tjne\t.L17\n\t"
	.ascii "mov\tesi, 2\n\tlea\trax, .LC9[rip]\n\tmov\trdi, rax\n\tcall"
	.ascii "\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L15\n.L17:\n"
	.ascii "\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR ["
	.ascii "rax]\n\tcmp\tal, 92\n\tjne\t.L18\n\tmov\tesi, 2\n\tlea\trax, ."
	.ascii "LC10[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD PT"
	.ascii "R -8[rbp], 1\n\tjmp\t.L15\n.L18:\n\tmov\trax, QWORD PTR -"
	.ascii "8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd"
	.ascii "\tQWORD PTR -8[rbp], 1\n.L15:\n\tadd\tDWORD PTR -12[rbp"
	.ascii "], 1\n.L10:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax,"
	.ascii " BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L19\n\tmov\tesi, 2"
	.ascii "\n\tlea\trax, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tn"
	.ascii "op\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.L"
	.ascii "FE2:\n\t.size\tdisplay_code, .-display_code\n\t.globl\td"
	.ascii "isplay\n\t.type\tdisplay, @function\ndisplay:\n.LFB3:\n\t"
	.ascii ".cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_of"
	.ascii "fset 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_de"
	.ascii "f_cfa_register 6\n\tsub\trsp, 8\n\tmov\tQWORD PTR -8[rbp"
	.ascii "], rdi\n\tjmp\t.L21\n.L24:\n\tmov\trax, QWORD PTR -8[rbp]"
	.ascii "\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 35\n\tjne\t.L22\n"
	.ascii "\tmov\teax, 0\n\tcall\tdisplay_code\n\tjmp\t.L23\n.L22:\n\tmo"
	.ascii "v\trax, QWORD PTR -8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, rax"
	.ascii "\n\tcall\tconcat\n.L23:\n\tadd\tQWORD PTR -8[rbp], 1\n.L21"
	.ascii ":\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR"
	.ascii " [rax]\n\ttest\tal, al\n\tjne\t.L24\n\tnop\n\tnop\n\tleave\n\t.c"
	.ascii "fi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE3:\n\t.size\td"
	.ascii "isplay, .-display\n\t.section\t.rodata\n.LC11:\n\t.strin"
	.ascii "g\t\"w\"\n.LC12:\n\t.string\t\"Grace_kid.s\"\n\t.text\n\t.globl"
	.ascii "\texport\n\t.type\texport, @function\nexport:\n.LFB4:\n\t."
	.ascii "cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_off"
	.ascii "set 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def"
	.ascii "_cfa_register 6\n\tsub\trsp, 32\n\tmov\tQWORD PTR -24[rb"
	.ascii "p], rdi\n\tlea\trax, .LC11[rip]\n\tmov\trsi, rax\n\tlea\tra"
	.ascii "x, .LC12[rip]\n\tmov\trdi, rax\n\tcall\tfopen@PLT\n\tmov\tQ"
	.ascii "WORD PTR -8[rbp], rax\n\tcmp\tQWORD PTR -8[rbp], 0\n\tj"
	.ascii "e\t.L28\n\tmov\trdx, QWORD PTR -8[rbp]\n\tmov\trax, QWORD"
	.ascii " PTR -24[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tfp"
	.ascii "uts@PLT\n\tmov\trax, QWORD PTR -8[rbp]\n\tmov\trdi, rax\n"
	.ascii "\tcall\tfclose@PLT\n\tjmp\t.L25\n.L28:\n\tnop\n.L25:\n\tleave"
	.ascii "\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE4:\n\t.si"
	.ascii "ze\texport, .-export\n\t.globl\tmain\n\t.type\tmain, @fun"
	.ascii "ction\nmain:\n.LFB5:\n\t.cfi_startproc\n\tendbr64\n\tpush\t"
	.ascii "rbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tm"
	.ascii "ov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tlea\trax, cod"
	.ascii "e[rip]\n\tmov\trdi, rax\n\tcall\tdisplay\n\tlea\trax, buf[r"
	.ascii "ip]\n\tmov\trdi, rax\n\tcall\texport\n\tmov\teax, 0\n\tpop\trb"
	.ascii "p\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE5:\n\t.s"
	.ascii "ize\tmain, .-main\n\t.local\tp.0\n\t.comm\tp.0,4,4\n\t.iden"
	.ascii "t\t\"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0\"\n\t.s"
	.ascii "ection\t.note.GNU-stack,\"\",@progbits\n\t.section\t.not"
	.ascii "e.gnu.property,\"a\"\n\t.align 8\n\t.long\t1f - 0f\n\t.long"
	.ascii "\t4f - 1f\n\t.long\t5\n0:\n\t.string\t\"GNU\"\n1:\n\t.align 8\n\t"
	.ascii ".long\t0xc0000002\n\t.long\t3f - 2f\n2:\n\t.long\t0x3\n3:\n\t"
	.string ".align 8\n4:\n"

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
	.string	"w"
.LC12:
	.string	"Grace_kid.s"
	.text
	.globl	export
	.type	export, @function
export:
.LFB4:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	lea	rax, .LC11[rip]
	mov	rsi, rax
	lea	rax, .LC12[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	je	.L28
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	fputs@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	fclose@PLT
	jmp	.L25
.L28:
	nop
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	export, .-export
	.globl	main
	.type	main, @function
main:
.LFB5:
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
	mov	rdi, rax
	call	export
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
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
