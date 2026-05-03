# i = 5
	.file	"Sully.asm.c"
	.intel_syntax noprefix
	.text
	.globl	code
	.data
	.align 32
	.type   code, @object
	.size   code, 12085
code:
	.ascii "# i = 5\n\t.file\t\"Sully.asm.c\"\n\t.intel_syntax nopref"
	.ascii "ix\n\t.text\n\t.globl\tcode\n\t.data\n$\n\t.globl\tisnotroot\n"
	.ascii "\t.type\tisnotroot, @object\n\t.size\tisnotroot, 1\nisno"
	.ascii "troot:\n\t.byte\t49\n\t.globl\tgen\n\t.align 4\n\t.type\tgen,"
	.ascii " @object\n\t.size\tgen, 4\ngen:\n\t.long\t?\n\t.globl\tbuf\n\t"
	.ascii ".bss\n\t.align 32\n\t.type\tbuf, @object\n\t.size\tbuf, 12"
	.ascii "3456\nbuf:\n\t.zero\t123456\n\t.text\n\t.globl\tconcat\n\t.ty"
	.ascii "pe\tconcat, @function\nconcat:\n.LFB6:\n\t.cfi_startpro"
	.ascii "c\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi"
	.ascii "_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_registe"
	.ascii "r 6\n\tmov\tQWORD PTR -8[rbp], rdi\n\tmov\tDWORD PTR -12"
	.ascii "[rbp], esi\n\tjmp\t.L2\n.L4:\n\tmov\trax, QWORD PTR -8[rb"
	.ascii "p]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -8[rbp], rdx\n\tm"
	.ascii "ov\tedx, DWORD PTR p.0[rip]\n\tlea\tecx, 1[rdx]\n\tmov\tD"
	.ascii "WORD PTR p.0[rip], ecx\n\tmovzx\tecx, BYTE PTR [rax]\n"
	.ascii "\tmovsx\trax, edx\n\tlea\trdx, buf[rip]\n\tmov\tBYTE PTR ["
	.ascii "rax+rdx], cl\n.L2:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmov"
	.ascii "zx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tje\t.L3\n\tmov\te"
	.ascii "ax, DWORD PTR -12[rbp]\n\tlea\tedx, -1[rax]\n\tmov\tDWOR"
	.ascii "D PTR -12[rbp], edx\n\ttest\teax, eax\n\tjne\t.L4\n.L3:\n\t"
	.ascii "mov\teax, DWORD PTR p.0[rip]\n\tcdqe\n\tlea\trdx, buf[ri"
	.ascii "p]\n\tmov\tBYTE PTR [rax+rdx], 0\n\tnop\n\tpop\trbp\n\t.cfi_"
	.ascii "def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE6:\n\t.size\tconc"
	.ascii "at, .-concat\n\t.globl\titoa\n\t.type\titoa, @function\ni"
	.ascii "toa:\n.LFB7:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.c"
	.ascii "fi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp,"
	.ascii " rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp, 80\n\tmov\tQW"
	.ascii "ORD PTR -72[rbp], rdi\n\tmov\tDWORD PTR -76[rbp], esi"
	.ascii "\n\tmov\trax, QWORD PTR fs:40\n\tmov\tQWORD PTR -8[rbp],"
	.ascii " rax\n\txor\teax, eax\n\tmov\tDWORD PTR -56[rbp], 0\n\tcmp"
	.ascii "\tDWORD PTR -76[rbp], 0\n\tjns\t.L6\n\tmov\trax, QWORD PT"
	.ascii "R -72[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -72[rbp"
	.ascii "], rdx\n\tmov\tBYTE PTR [rax], 45\n\tneg\tDWORD PTR -76["
	.ascii "rbp]\n.L6:\n\tcmp\tDWORD PTR -76[rbp], 0\n\tjne\t.L9\n\tmov"
	.ascii "\trax, QWORD PTR -72[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWO"
	.ascii "RD PTR -72[rbp], rdx\n\tmov\tBYTE PTR [rax], 48\n\tmov\t"
	.ascii "rax, QWORD PTR -72[rbp]\n\tmov\tBYTE PTR [rax], 0\n\tjm"
	.ascii "p\t.L5\n.L10:\n\tmov\tedx, DWORD PTR -76[rbp]\n\tmovsx\tra"
	.ascii "x, edx\n\timul\trax, rax, 1717986919\n\tshr\trax, 32\n\tsa"
	.ascii "r\teax, 2\n\tmov\tesi, edx\n\tsar\tesi, 31\n\tsub\teax, esi\n"
	.ascii "\tmov\tecx, eax\n\tmov\teax, ecx\n\tsal\teax, 2\n\tadd\teax, "
	.ascii "ecx\n\tadd\teax, eax\n\tmov\tecx, edx\n\tsub\tecx, eax\n\tmov"
	.ascii "\teax, ecx\n\tlea\tecx, 48[rax]\n\tmov\teax, DWORD PTR -5"
	.ascii "6[rbp]\n\tlea\tedx, 1[rax]\n\tmov\tDWORD PTR -56[rbp], e"
	.ascii "dx\n\tmov\tedx, ecx\n\tcdqe\n\tmov\tBYTE PTR -48[rbp+rax],"
	.ascii " dl\n\tmov\teax, DWORD PTR -76[rbp]\n\tmovsx\trdx, eax\n\t"
	.ascii "imul\trdx, rdx, 1717986919\n\tshr\trdx, 32\n\tsar\tedx, 2"
	.ascii "\n\tsar\teax, 31\n\tmov\tecx, eax\n\tmov\teax, edx\n\tsub\teax"
	.ascii ", ecx\n\tmov\tDWORD PTR -76[rbp], eax\n.L9:\n\tcmp\tDWORD"
	.ascii " PTR -76[rbp], 0\n\tjg\t.L10\n\tmov\tDWORD PTR -52[rbp],"
	.ascii " 0\n\tjmp\t.L11\n.L12:\n\tsub\tDWORD PTR -56[rbp], 1\n\tmov"
	.ascii "\teax, DWORD PTR -52[rbp]\n\tlea\tedx, 1[rax]\n\tmov\tDWO"
	.ascii "RD PTR -52[rbp], edx\n\tmovsx\trdx, eax\n\tmov\trax, QWO"
	.ascii "RD PTR -72[rbp]\n\tadd\trdx, rax\n\tmov\teax, DWORD PTR "
	.ascii "-56[rbp]\n\tcdqe\n\tmovzx\teax, BYTE PTR -48[rbp+rax]\n\t"
	.ascii "mov\tBYTE PTR [rdx], al\n.L11:\n\tcmp\tDWORD PTR -56[rb"
	.ascii "p], 0\n\tjg\t.L12\n\tmov\teax, DWORD PTR -52[rbp]\n\tmovsx"
	.ascii "\trdx, eax\n\tmov\trax, QWORD PTR -72[rbp]\n\tadd\trax, r"
	.ascii "dx\n\tmov\tBYTE PTR [rax], 0\n.L5:\n\tmov\trax, QWORD PTR"
	.ascii " -8[rbp]\n\tsub\trax, QWORD PTR fs:40\n\tje\t.L13\n\tcall\t"
	.ascii "__stack_chk_fail@PLT\n.L13:\n\tleave\n\t.cfi_def_cfa 7,"
	.ascii " 8\n\tret\n\t.cfi_endproc\n.LFE7:\n\t.size\titoa, .-itoa\n\t"
	.ascii ".globl\tmy_strlen\n\t.type\tmy_strlen, @function\nmy_st"
	.ascii "rlen:\n.LFB8:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t."
	.ascii "cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp"
	.ascii ", rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQWORD PTR -24["
	.ascii "rbp], rdi\n\tmov\tDWORD PTR -4[rbp], 0\n\tjmp\t.L15\n.L16"
	.ascii ":\n\tadd\tDWORD PTR -4[rbp], 1\n.L15:\n\tmov\trax, QWORD "
	.ascii "PTR -24[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -24[r"
	.ascii "bp], rdx\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\t"
	.ascii "jne\t.L16\n\tmov\teax, DWORD PTR -4[rbp]\n\tpop\trbp\n\t.cf"
	.ascii "i_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE8:\n\t.size\tmy"
	.ascii "_strlen, .-my_strlen\n\t.section\t.rodata\n.LC0:\n\t.str"
	.ascii "ing\t\"\\t.align 32\\n\"\n.LC1:\n\t.string\t\"\\t.type\\tcode,"
	.ascii " @object\\n\"\n.LC2:\n\t.string\t\"\\t.size\\tcode, 1234566"
	.ascii "\\n\"\n.LC3:\n\t.string\t\"code:\\n\"\n.LC4:\n\t.string\t\"\\\"\\n\""
	.ascii "\n.LC5:\n\t.string\t\"\\t.string \\\"\"\n.LC6:\n\t.string\t\"\\t."
	.ascii "ascii \\\"\"\n.LC7:\n\t.string\t\"\\\\\\\"\"\n.LC8:\n\t.string\t\"\\\\"
	.ascii "n\"\n.LC9:\n\t.string\t\"\\\\t\"\n.LC10:\n\t.string\t\"\\\\\\\\\"\n\t.t"
	.ascii "ext\n\t.globl\tdisplay_code\n\t.type\tdisplay_code, @fun"
	.ascii "ction\ndisplay_code:\n.LFB9:\n\t.cfi_startproc\n\tendbr6"
	.ascii "4\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6"
	.ascii ", -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\t"
	.ascii "rsp, 16\n\tlea\trax, code[rip]\n\tmov\tQWORD PTR -8[rbp]"
	.ascii ", rax\n\tmov\tesi, 11\n\tlea\trax, .LC0[rip]\n\tmov\trdi, r"
	.ascii "ax\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, .LC1[rip]\n\t"
	.ascii "mov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 21\n\tlea\trax, ."
	.ascii "LC2[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\tesi, 6\n\tl"
	.ascii "ea\trax, .LC3[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tmov\t"
	.ascii "DWORD PTR -12[rbp], 0\n\tjmp\t.L19\n.L28:\n\tmov\tedx, DW"
	.ascii "ORD PTR -12[rbp]\n\tmovsx\trax, edx\n\timul\trax, rax, 1"
	.ascii "374389535\n\tshr\trax, 32\n\tsar\teax, 4\n\tmov\tecx, edx\n\t"
	.ascii "sar\tecx, 31\n\tsub\teax, ecx\n\timul\tecx, eax, 50\n\tmov\t"
	.ascii "eax, edx\n\tsub\teax, ecx\n\ttest\teax, eax\n\tjne\t.L20\n\tc"
	.ascii "mp\tDWORD PTR -12[rbp], 0\n\tje\t.L21\n\tmov\tesi, 2\n\tlea"
	.ascii "\trax, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n.L21:\n\t"
	.ascii "mov\trax, QWORD PTR -8[rbp]\n\tmov\trdi, rax\n\tcall\tmy_"
	.ascii "strlen\n\tcmp\teax, 49\n\tjg\t.L22\n\tmov\tesi, 10\n\tlea\trax"
	.ascii ", .LC5[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tjmp\t.L20\n."
	.ascii "L22:\n\tmov\tesi, 9\n\tlea\trax, .LC6[rip]\n\tmov\trdi, rax"
	.ascii "\n\tcall\tconcat\n.L20:\n\tmov\trax, QWORD PTR -8[rbp]\n\tm"
	.ascii "ovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 34\n\tjne\t.L23\n\tmo"
	.ascii "v\tesi, 2\n\tlea\trax, .LC7[rip]\n\tmov\trdi, rax\n\tcall\tc"
	.ascii "oncat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L24\n.L23:\n\tm"
	.ascii "ov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [ra"
	.ascii "x]\n\tcmp\tal, 10\n\tjne\t.L25\n\tmov\tesi, 2\n\tlea\trax, .LC"
	.ascii "8[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD PTR -"
	.ascii "8[rbp], 1\n\tjmp\t.L24\n.L25:\n\tmov\trax, QWORD PTR -8[r"
	.ascii "bp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 9\n\tjne\t.L2"
	.ascii "6\n\tmov\tesi, 2\n\tlea\trax, .LC9[rip]\n\tmov\trdi, rax\n\tc"
	.ascii "all\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L24\n.L2"
	.ascii "6:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PT"
	.ascii "R [rax]\n\tcmp\tal, 92\n\tjne\t.L27\n\tmov\tesi, 2\n\tlea\trax"
	.ascii ", .LC10[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\tQWORD"
	.ascii " PTR -8[rbp], 1\n\tjmp\t.L24\n.L27:\n\tmov\trax, QWORD PT"
	.ascii "R -8[rbp]\n\tmov\tesi, 1\n\tmov\trdi, rax\n\tcall\tconcat\n\t"
	.ascii "add\tQWORD PTR -8[rbp], 1\n.L24:\n\tadd\tDWORD PTR -12["
	.ascii "rbp], 1\n.L19:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\te"
	.ascii "ax, BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L28\n\tmov\tesi"
	.ascii ", 2\n\tlea\trax, .LC4[rip]\n\tmov\trdi, rax\n\tcall\tconcat"
	.ascii "\n\tnop\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc"
	.ascii "\n.LFE9:\n\t.size\tdisplay_code, .-display_code\n\t.sect"
	.ascii "ion\t.rodata\n.LC11:\n\t.string\t\"1\"\n\t.text\n\t.globl\tdis"
	.ascii "play\n\t.type\tdisplay, @function\ndisplay:\n.LFB10:\n\t."
	.ascii "cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_off"
	.ascii "set 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def"
	.ascii "_cfa_register 6\n\tsub\trsp, 64\n\tmov\tQWORD PTR -56[rb"
	.ascii "p], rdi\n\tmov\tDWORD PTR -60[rbp], esi\n\tmov\trax, QWO"
	.ascii "RD PTR fs:40\n\tmov\tQWORD PTR -8[rbp], rax\n\txor\teax,"
	.ascii " eax\n\tjmp\t.L30\n.L35:\n\tmov\trax, QWORD PTR -56[rbp]\n"
	.ascii "\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 36\n\tjne\t.L31\n\t"
	.ascii "mov\teax, 0\n\tcall\tdisplay_code\n\tjmp\t.L32\n.L31:\n\tmov"
	.ascii "\trax, QWORD PTR -56[rbp]\n\tmovzx\teax, BYTE PTR [rax"
	.ascii "]\n\tcmp\tal, 63\n\tjne\t.L33\n\tmovzx\teax, BYTE PTR isnot"
	.ascii "root[rip]\n\tmovsx\teax, al\n\tlea\tecx, -48[rax]\n\tmov\te"
	.ascii "ax, DWORD PTR -60[rbp]\n\tsub\teax, ecx\n\tmov\tedx, eax"
	.ascii "\n\tlea\trax, -48[rbp]\n\tmov\tesi, edx\n\tmov\trdi, rax\n\tc"
	.ascii "all\titoa\n\tlea\trax, -48[rbp]\n\tmov\trdi, rax\n\tcall\tst"
	.ascii "rlen@PLT\n\tmov\tedx, eax\n\tlea\trax, -48[rbp]\n\tmov\tesi"
	.ascii ", edx\n\tmov\trdi, rax\n\tcall\tconcat\n\tjmp\t.L32\n.L33:\n\t"
	.ascii "mov\trax, QWORD PTR -56[rbp]\n\tmovzx\teax, BYTE PTR ["
	.ascii "rax]\n\tcmp\tal, 7\n\tjne\t.L34\n\tmov\tesi, 1\n\tlea\trax, .L"
	.ascii "C11[rip]\n\tmov\trdi, rax\n\tcall\tconcat\n\tjmp\t.L32\n.L34"
	.ascii ":\n\tmov\trax, QWORD PTR -56[rbp]\n\tmov\tesi, 1\n\tmov\trd"
	.ascii "i, rax\n\tcall\tconcat\n.L32:\n\tadd\tQWORD PTR -56[rbp],"
	.ascii " 1\n.L30:\n\tmov\trax, QWORD PTR -56[rbp]\n\tmovzx\teax, "
	.ascii "BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L35\n\tnop\n\tmov\tra"
	.ascii "x, QWORD PTR -8[rbp]\n\tsub\trax, QWORD PTR fs:40\n\tje"
	.ascii "\t.L36\n\tcall\t__stack_chk_fail@PLT\n.L36:\n\tleave\n\t.cf"
	.ascii "i_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE10:\n\t.size\td"
	.ascii "isplay, .-display\n\t.globl\texec\n\t.type\texec, @funct"
	.ascii "ion\nexec:\n.LFB11:\n\t.cfi_startproc\n\tendbr64\n\tpush\tr"
	.ascii "bp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmo"
	.ascii "v\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp, 608\n"
	.ascii "\tmov\tQWORD PTR -600[rbp], rdi\n\tmov\trax, QWORD PTR "
	.ascii "fs:40\n\tmov\tQWORD PTR -8[rbp], rax\n\txor\teax, eax\n\tm"
	.ascii "ov\tBYTE PTR -592[rbp], 0\n\tmov\tBYTE PTR -528[rbp], "
	.ascii "0\n\tmov\trdx, QWORD PTR -600[rbp]\n\tlea\trax, -592[rbp"
	.ascii "]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tmo"
	.ascii "v\trax, QWORD PTR -600[rbp]\n\tmov\trdi, rax\n\tcall\tmy_"
	.ascii "strlen\n\tsub\teax, 2\n\tcdqe\n\tmov\tBYTE PTR -592[rbp+ra"
	.ascii "x], 0\n\tlea\trax, -528[rbp]\n\tmov\trdi, rax\n\tcall\tstrl"
	.ascii "en@PLT\n\tmov\trdx, rax\n\tlea\trax, -528[rbp]\n\tadd\trax,"
	.ascii " rdx\n\tmov\tDWORD PTR [rax], 757101409\n\tmov\tWORD PTR"
	.ascii " 4[rax], 8303\n\tmov\tBYTE PTR 6[rax], 0\n\tlea\trdx, -5"
	.ascii "92[rbp]\n\tlea\trax, -528[rbp]\n\tmov\trsi, rdx\n\tmov\trdi"
	.ascii ", rax\n\tcall\tstrcat@PLT\n\tlea\trax, -528[rbp]\n\tmov\trd"
	.ascii "i, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, rax\n\tlea\trax, -5"
	.ascii "28[rbp]\n\tadd\trax, rdx\n\tmov\tDWORD PTR [rax], 212561"
	.ascii "4\n\tlea\trdx, -592[rbp]\n\tlea\trax, -528[rbp]\n\tmov\trsi"
	.ascii ", rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tlea\trax, -52"
	.ascii "8[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, ra"
	.ascii "x\n\tlea\trax, -528[rbp]\n\tadd\trax, rdx\n\tmovabs\trcx, 7"
	.ascii "161681220577817390\n\tmov\tQWORD PTR [rax], rcx\n\tmov\t"
	.ascii "DWORD PTR 8[rax], 544156960\n\tmov\tBYTE PTR 12[rax],"
	.ascii " 0\n\tlea\trdx, -592[rbp]\n\tlea\trax, -528[rbp]\n\tmov\trs"
	.ascii "i, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tlea\trax, -5"
	.ascii "28[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, r"
	.ascii "ax\n\tlea\trax, -528[rbp]\n\tadd\trax, rdx\n\tmov\tWORD PTR"
	.ascii " [rax], 32\n\tlea\trdx, -592[rbp]\n\tlea\trax, -528[rbp]"
	.ascii "\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tlea"
	.ascii "\trax, -528[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmo"
	.ascii "v\trdx, rax\n\tlea\trax, -528[rbp]\n\tadd\trax, rdx\n\tmov\t"
	.ascii "DWORD PTR [rax], 757100334\n\tmov\tWORD PTR 4[rax], 2"
	.ascii "5452\n\tmov\tBYTE PTR 6[rax], 0\n\tlea\trax, -528[rbp]\n\t"
	.ascii "mov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, rax\n\tlea\tr"
	.ascii "ax, -528[rbp]\n\tadd\trax, rdx\n\tmov\tDWORD PTR [rax], "
	.ascii "791552059\n\tmov\tBYTE PTR 4[rax], 0\n\tlea\trdx, -592[r"
	.ascii "bp]\n\tlea\trax, -528[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, ra"
	.ascii "x\n\tcall\tstrcat@PLT\n\tlea\trax, -528[rbp]\n\tmov\trdi, r"
	.ascii "ax\n\tcall\tputs@PLT\n\tlea\trax, -528[rbp]\n\tmov\trdi, ra"
	.ascii "x\n\tcall\tsystem@PLT\n\tnop\n\tmov\trax, QWORD PTR -8[rbp"
	.ascii "]\n\tsub\trax, QWORD PTR fs:40\n\tje\t.L38\n\tcall\t__stack"
	.ascii "_chk_fail@PLT\n.L38:\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret"
	.ascii "\n\t.cfi_endproc\n.LFE11:\n\t.size\texec, .-exec\n\t.secti"
	.ascii "on\t.rodata\n.LC12:\n\t.string\t\"w\"\n\t.text\n\t.globl\texpo"
	.ascii "rtexec\n\t.type\texportexec, @function\nexportexec:\n.L"
	.ascii "FB12:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def"
	.ascii "_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t"
	.ascii ".cfi_def_cfa_register 6\n\tsub\trsp, 304\n\tmov\tQWORD P"
	.ascii "TR -296[rbp], rdi\n\tmov\tDWORD PTR -300[rbp], esi\n\tm"
	.ascii "ov\trax, QWORD PTR fs:40\n\tmov\tQWORD PTR -8[rbp], ra"
	.ascii "x\n\txor\teax, eax\n\tmov\tBYTE PTR -272[rbp], 0\n\tlea\tra"
	.ascii "x, -272[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\tr"
	.ascii "dx, rax\n\tlea\trax, -272[rbp]\n\tadd\trax, rdx\n\tmov\tDWO"
	.ascii "RD PTR [rax], 1819047251\n\tmov\tWORD PTR 4[rax], 244"
	.ascii "41\n\tmov\tBYTE PTR 6[rax], 0\n\tmovzx\teax, BYTE PTR is"
	.ascii "notroot[rip]\n\tmovsx\teax, al\n\tlea\tecx, -48[rax]\n\tmo"
	.ascii "v\teax, DWORD PTR -300[rbp]\n\tsub\teax, ecx\n\tmov\tedx,"
	.ascii " eax\n\tlea\trax, -272[rbp]\n\tadd\trax, 6\n\tmov\tesi, edx"
	.ascii "\n\tmov\trdi, rax\n\tcall\titoa\n\tlea\trax, -272[rbp]\n\tmov"
	.ascii "\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, rax\n\tlea\trax,"
	.ascii " -272[rbp]\n\tadd\trax, rdx\n\tmov\tWORD PTR [rax], 2948"
	.ascii "6\n\tmov\tBYTE PTR 2[rax], 0\n\tlea\trax, -272[rbp]\n\tlea"
	.ascii "\trdx, .LC12[rip]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall"
	.ascii "\tfopen@PLT\n\tmov\tQWORD PTR -280[rbp], rax\n\tcmp\tQWOR"
	.ascii "D PTR -280[rbp], 0\n\tje\t.L43\n\tmov\trdx, QWORD PTR -2"
	.ascii "80[rbp]\n\tmov\trax, QWORD PTR -296[rbp]\n\tmov\trsi, rd"
	.ascii "x\n\tmov\trdi, rax\n\tcall\tfputs@PLT\n\tmov\trax, QWORD PT"
	.ascii "R -280[rbp]\n\tmov\trdi, rax\n\tcall\tfclose@PLT\n\tlea\tra"
	.ascii "x, -272[rbp]\n\tmov\trdi, rax\n\tcall\texec\n\tjmp\t.L39\n.L"
	.ascii "43:\n\tnop\n.L39:\n\tmov\trax, QWORD PTR -8[rbp]\n\tsub\tra"
	.ascii "x, QWORD PTR fs:40\n\tje\t.L42\n\tcall\t__stack_chk_fail"
	.ascii "@PLT\n.L42:\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_en"
	.ascii "dproc\n.LFE12:\n\t.size\texportexec, .-exportexec\n\t.gl"
	.ascii "obl\tmain\n\t.type\tmain, @function\n# First comment\nma"
	.ascii "in:\n.LFB13:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.c"
	.ascii "fi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp,"
	.ascii " rsp\n\t.cfi_def_cfa_register 6\n\tmov\teax, DWORD PTR "
	.ascii "gen[rip]\n\ttest\teax, eax\n\tjg\t.L45\n\tmov\teax, 0\n\tjmp\t"
	.ascii ".L46\n.L45:\n\tmov\teax, DWORD PTR gen[rip]\n\tmov\tesi, "
	.ascii "eax\n\tlea\trax, code[rip]\n\tmov\trdi, rax\n\tcall\tdispla"
	.ascii "y\n\tmov\teax, DWORD PTR gen[rip]\n\tmov\tesi, eax\n\tlea\t"
	.ascii "rax, buf[rip]\n\tmov\trdi, rax\n\tcall\texportexec\n\tmov\t"
	.ascii "eax, 0\n.L46:\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cf"
	.ascii "i_endproc\n.LFE13:\n\t.size\tmain, .-main\n\t.local\tp.0\n"
	.ascii "\t.comm\tp.0,4,4\n\t.ident\t\"GCC: (Ubuntu 11.4.0-1ubunt"
	.ascii "u1~22.04.3) 11.4.0\"\n\t.section\t.note.GNU-stack,\"\",@"
	.ascii "progbits\n\t.section\t.note.gnu.property,\"a\"\n\t.align "
	.ascii "8\n\t.long\t1f - 0f\n\t.long\t4f - 1f\n\t.long\t5\n0:\n\t.stri"
	.ascii "ng\t\"GNU\"\n1:\n\t.align 8\n\t.long\t0xc0000002\n\t.long\t3f "
	.string "- 2f\n2:\n\t.long\t0x3\n3:\n\t.align 8\n4:\n"
	.globl	isnotroot
	.type	isnotroot, @object
	.size	isnotroot, 1
isnotroot:
	.byte	48
	.globl	gen
	.align 4
	.type	gen, @object
	.size	gen, 4
gen:
	.long	5
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
.LFB6:
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
.LFE6:
	.size	concat, .-concat
	.globl	itoa
	.type	itoa, @function
itoa:
.LFB7:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	QWORD PTR -72[rbp], rdi
	mov	DWORD PTR -76[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -56[rbp], 0
	cmp	DWORD PTR -76[rbp], 0
	jns	.L6
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -72[rbp], rdx
	mov	BYTE PTR [rax], 45
	neg	DWORD PTR -76[rbp]
.L6:
	cmp	DWORD PTR -76[rbp], 0
	jne	.L9
	mov	rax, QWORD PTR -72[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -72[rbp], rdx
	mov	BYTE PTR [rax], 48
	mov	rax, QWORD PTR -72[rbp]
	mov	BYTE PTR [rax], 0
	jmp	.L5
.L10:
	mov	edx, DWORD PTR -76[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 2
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	add	eax, eax
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, ecx
	lea	ecx, 48[rax]
	mov	eax, DWORD PTR -56[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -56[rbp], edx
	mov	edx, ecx
	cdqe
	mov	BYTE PTR -48[rbp+rax], dl
	mov	eax, DWORD PTR -76[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -76[rbp], eax
.L9:
	cmp	DWORD PTR -76[rbp], 0
	jg	.L10
	mov	DWORD PTR -52[rbp], 0
	jmp	.L11
.L12:
	sub	DWORD PTR -56[rbp], 1
	mov	eax, DWORD PTR -52[rbp]
	lea	edx, 1[rax]
	mov	DWORD PTR -52[rbp], edx
	movsx	rdx, eax
	mov	rax, QWORD PTR -72[rbp]
	add	rdx, rax
	mov	eax, DWORD PTR -56[rbp]
	cdqe
	movzx	eax, BYTE PTR -48[rbp+rax]
	mov	BYTE PTR [rdx], al
.L11:
	cmp	DWORD PTR -56[rbp], 0
	jg	.L12
	mov	eax, DWORD PTR -52[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -72[rbp]
	add	rax, rdx
	mov	BYTE PTR [rax], 0
.L5:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	itoa, .-itoa
	.globl	my_strlen
	.type	my_strlen, @function
my_strlen:
.LFB8:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -4[rbp], 0
	jmp	.L15
.L16:
	add	DWORD PTR -4[rbp], 1
.L15:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L16
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
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
.LFB9:
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
	jmp	.L19
.L28:
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
	jne	.L20
	cmp	DWORD PTR -12[rbp], 0
	je	.L21
	mov	esi, 2
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	concat
.L21:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	my_strlen
	cmp	eax, 49
	jg	.L22
	mov	esi, 10
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	concat
	jmp	.L20
.L22:
	mov	esi, 9
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	concat
.L20:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 34
	jne	.L23
	mov	esi, 2
	lea	rax, .LC7[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L24
.L23:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 10
	jne	.L25
	mov	esi, 2
	lea	rax, .LC8[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L24
.L25:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 9
	jne	.L26
	mov	esi, 2
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L24
.L26:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 92
	jne	.L27
	mov	esi, 2
	lea	rax, .LC10[rip]
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L24
.L27:
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
.L24:
	add	DWORD PTR -12[rbp], 1
.L19:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L28
	mov	esi, 2
	lea	rax, .LC4[rip]
	mov	rdi, rax
	call	concat
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	display_code, .-display_code
	.section	.rodata
.LC11:
	.string	"1"
	.text
	.globl	display
	.type	display, @function
display:
.LFB10:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	QWORD PTR -56[rbp], rdi
	mov	DWORD PTR -60[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	jmp	.L30
.L35:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 36
	jne	.L31
	mov	eax, 0
	call	display_code
	jmp	.L32
.L31:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 63
	jne	.L33
	movzx	eax, BYTE PTR isnotroot[rip]
	movsx	eax, al
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -60[rbp]
	sub	eax, ecx
	mov	edx, eax
	lea	rax, -48[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	itoa
	lea	rax, -48[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	edx, eax
	lea	rax, -48[rbp]
	mov	esi, edx
	mov	rdi, rax
	call	concat
	jmp	.L32
.L33:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 7
	jne	.L34
	mov	esi, 1
	lea	rax, .LC11[rip]
	mov	rdi, rax
	call	concat
	jmp	.L32
.L34:
	mov	rax, QWORD PTR -56[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
.L32:
	add	QWORD PTR -56[rbp], 1
.L30:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L35
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	display, .-display
	.globl	exec
	.type	exec, @function
exec:
.LFB11:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 608
	mov	QWORD PTR -600[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	BYTE PTR -592[rbp], 0
	mov	BYTE PTR -528[rbp], 0
	mov	rdx, QWORD PTR -600[rbp]
	lea	rax, -592[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	mov	rax, QWORD PTR -600[rbp]
	mov	rdi, rax
	call	my_strlen
	sub	eax, 2
	cdqe
	mov	BYTE PTR -592[rbp+rax], 0
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 757101409
	mov	WORD PTR 4[rax], 8303
	mov	BYTE PTR 6[rax], 0
	lea	rdx, -592[rbp]
	lea	rax, -528[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 2125614
	lea	rdx, -592[rbp]
	lea	rax, -528[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	movabs	rcx, 7161681220577817390
	mov	QWORD PTR [rax], rcx
	mov	DWORD PTR 8[rax], 544156960
	mov	BYTE PTR 12[rax], 0
	lea	rdx, -592[rbp]
	lea	rax, -528[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	mov	WORD PTR [rax], 32
	lea	rdx, -592[rbp]
	lea	rax, -528[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 757100334
	mov	WORD PTR 4[rax], 25452
	mov	BYTE PTR 6[rax], 0
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -528[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 791552059
	mov	BYTE PTR 4[rax], 0
	lea	rdx, -592[rbp]
	lea	rax, -528[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	strcat@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -528[rbp]
	mov	rdi, rax
	call	system@PLT
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	exec, .-exec
	.section	.rodata
.LC12:
	.string	"w"
	.text
	.globl	exportexec
	.type	exportexec, @function
exportexec:
.LFB12:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 304
	mov	QWORD PTR -296[rbp], rdi
	mov	DWORD PTR -300[rbp], esi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	BYTE PTR -272[rbp], 0
	lea	rax, -272[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -272[rbp]
	add	rax, rdx
	mov	DWORD PTR [rax], 1819047251
	mov	WORD PTR 4[rax], 24441
	mov	BYTE PTR 6[rax], 0
	movzx	eax, BYTE PTR isnotroot[rip]
	movsx	eax, al
	lea	ecx, -48[rax]
	mov	eax, DWORD PTR -300[rbp]
	sub	eax, ecx
	mov	edx, eax
	lea	rax, -272[rbp]
	add	rax, 6
	mov	esi, edx
	mov	rdi, rax
	call	itoa
	lea	rax, -272[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	rdx, rax
	lea	rax, -272[rbp]
	add	rax, rdx
	mov	WORD PTR [rax], 29486
	mov	BYTE PTR 2[rax], 0
	lea	rax, -272[rbp]
	lea	rdx, .LC12[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -280[rbp], rax
	cmp	QWORD PTR -280[rbp], 0
	je	.L43
	mov	rdx, QWORD PTR -280[rbp]
	mov	rax, QWORD PTR -296[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	fputs@PLT
	mov	rax, QWORD PTR -280[rbp]
	mov	rdi, rax
	call	fclose@PLT
	lea	rax, -272[rbp]
	mov	rdi, rax
	call	exec
	jmp	.L39
.L43:
	nop
.L39:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	exportexec, .-exportexec
	.globl	main
	.type	main, @function
# First comment
main:
.LFB13:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	eax, DWORD PTR gen[rip]
	test	eax, eax
	jg	.L45
	mov	eax, 0
	jmp	.L46
.L45:
	mov	eax, DWORD PTR gen[rip]
	mov	esi, eax
	lea	rax, code[rip]
	mov	rdi, rax
	call	display
	mov	eax, DWORD PTR gen[rip]
	mov	esi, eax
	lea	rax, buf[rip]
	mov	rdi, rax
	call	exportexec
	mov	eax, 0
.L46:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
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
