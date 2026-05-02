	.file	"Sully.asm.c"
	.intel_syntax noprefix
	.text
	.globl	code
	.data
	.align 32
	.type	code, @object
	.size	code, 10948
code:
	.ascii "\t.file\t\"Sully.asm.c\"\n\t.intel_syntax noprefix\n\t.tex"
	.ascii "t\n\t.globl\tcode\n\t.data\n\t.type\tcode, @object\n\t.size\t"
	.ascii "code, 2\ncode:\n#\n\t.globl\tisnotroot\n\t.type\tisnotroot"
	.ascii ", @object\n\t.size\tisnotroot, 1\nisnotroot:\n\t.byte\t49"
	.ascii "\n\t.globl\tgen\n\t.align 4\n\t.type\tgen, @object\n\t.size\t"
	.ascii "gen, 4\ngen:\n\t.long\t?\n\t.globl\tbuf\n\t.bss\n\t.align 32\n"
	.ascii "\t.type\tbuf, @object\n\t.size\tbuf, 123456\nbuf:\n\t.zero"
	.ascii "\t123456\n\t.text\n\t.globl\tconcat\n\t.type\tconcat, @func"
	.ascii "tion\nconcat:\n.LFB6:\n\t.cfi_startproc\n\tendbr64\n\tpush"
	.ascii "\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\t"
	.ascii "mov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tmov\tQWORD P"
	.ascii "TR -8[rbp], rdi\n\tmov\tDWORD PTR -12[rbp], esi\n\tjmp\t"
	.ascii ".L2\n.L4:\n\tmov\trax, QWORD PTR -8[rbp]\n\tlea\trdx, 1[r"
	.ascii "ax]\n\tmov\tQWORD PTR -8[rbp], rdx\n\tmov\tedx, DWORD PT"
	.ascii "R p.0[rip]\n\tlea\tecx, 1[rdx]\n\tmov\tDWORD PTR p.0[rip"
	.ascii "], ecx\n\tmovzx\tecx, BYTE PTR [rax]\n\tmovsx\trax, edx\n"
	.ascii "\tlea\trdx, buf[rip]\n\tmov\tBYTE PTR [rax+rdx], cl\n.L2"
	.ascii ":\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR"
	.ascii " [rax]\n\ttest\tal, al\n\tje\t.L3\n\tmov\teax, DWORD PTR -1"
	.ascii "2[rbp]\n\tlea\tedx, -1[rax]\n\tmov\tDWORD PTR -12[rbp], "
	.ascii "edx\n\ttest\teax, eax\n\tjne\t.L4\n.L3:\n\tmov\teax, DWORD P"
	.ascii "TR p.0[rip]\n\tcdqe\n\tlea\trdx, buf[rip]\n\tmov\tBYTE PTR"
	.ascii " [rax+rdx], 0\n\tnop\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tre"
	.ascii "t\n\t.cfi_endproc\n.LFE6:\n\t.size\tconcat, .-concat\n\t.g"
	.ascii "lobl\titoa\n\t.type\titoa, @function\nitoa:\n.LFB7:\n\t.cf"
	.ascii "i_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offse"
	.ascii "t 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_c"
	.ascii "fa_register 6\n\tmov\tQWORD PTR -8[rbp], rdi\n\tmov\tDWO"
	.ascii "RD PTR -12[rbp], esi\n\tcmp\tDWORD PTR -12[rbp], 0\n\tj"
	.ascii "ns\t.L6\n\tneg\tDWORD PTR -12[rbp]\n\tmov\trax, QWORD PTR"
	.ascii " -8[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWORD PTR -8[rbp], "
	.ascii "rdx\n\tmov\tBYTE PTR [rax], 45\n.L6:\n\tcmp\tDWORD PTR -1"
	.ascii "2[rbp], 0\n\tjne\t.L8\n\tmov\trax, QWORD PTR -8[rbp]\n\tle"
	.ascii "a\trdx, 1[rax]\n\tmov\tQWORD PTR -8[rbp], rdx\n\tmov\tBYT"
	.ascii "E PTR [rax], 48\n\tjmp\t.L8\n.L11:\n\tmov\tedx, DWORD PTR"
	.ascii " -12[rbp]\n\tmovsx\trax, edx\n\timul\trax, rax, 17179869"
	.ascii "19\n\tshr\trax, 32\n\tsar\teax, 2\n\tmov\tesi, edx\n\tsar\tesi"
	.ascii ", 31\n\tsub\teax, esi\n\tmov\tecx, eax\n\tmov\teax, ecx\n\tsa"
	.ascii "l\teax, 2\n\tadd\teax, ecx\n\tadd\teax, eax\n\tmov\tecx, edx"
	.ascii "\n\tsub\tecx, eax\n\tmov\teax, ecx\n\tlea\tecx, 48[rax]\n\tmo"
	.ascii "v\trax, QWORD PTR -8[rbp]\n\tlea\trdx, 1[rax]\n\tmov\tQWO"
	.ascii "RD PTR -8[rbp], rdx\n\tmov\tedx, ecx\n\tmov\tBYTE PTR [r"
	.ascii "ax], dl\n\tcmp\tDWORD PTR -12[rbp], 0\n\tje\t.L12\n\tmov\te"
	.ascii "ax, DWORD PTR -12[rbp]\n\tmovsx\trdx, eax\n\timul\trdx, "
	.ascii "rdx, 1717986919\n\tshr\trdx, 32\n\tsar\tedx, 2\n\tsar\teax,"
	.ascii " 31\n\tmov\tecx, eax\n\tmov\teax, edx\n\tsub\teax, ecx\n\tmov"
	.ascii "\tDWORD PTR -12[rbp], eax\n.L8:\n\tcmp\tDWORD PTR -12[r"
	.ascii "bp], 0\n\tjne\t.L11\n\tjmp\t.L10\n.L12:\n\tnop\n.L10:\n\tmov\tr"
	.ascii "ax, QWORD PTR -8[rbp]\n\tmov\tBYTE PTR [rax], 0\n\tnop\n"
	.ascii "\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LF"
	.ascii "E7:\n\t.size\titoa, .-itoa\n\t.globl\tmy_strlen\n\t.type\tm"
	.ascii "y_strlen, @function\nmy_strlen:\n.LFB8:\n\t.cfi_startp"
	.ascii "roc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.c"
	.ascii "fi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_regis"
	.ascii "ter 6\n\tmov\tQWORD PTR -24[rbp], rdi\n\tmov\tDWORD PTR "
	.ascii "-4[rbp], 0\n\tjmp\t.L14\n.L15:\n\tadd\tDWORD PTR -4[rbp],"
	.ascii " 1\n.L14:\n\tmov\trax, QWORD PTR -24[rbp]\n\tlea\trdx, 1["
	.ascii "rax]\n\tmov\tQWORD PTR -24[rbp], rdx\n\tmovzx\teax, BYTE"
	.ascii " PTR [rax]\n\ttest\tal, al\n\tjne\t.L15\n\tmov\teax, DWORD "
	.ascii "PTR -4[rbp]\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi"
	.ascii "_endproc\n.LFE8:\n\t.size\tmy_strlen, .-my_strlen\n\t.se"
	.ascii "ction\t.rodata\n.LC0:\n\t.string\t\"\\\"\\n\"\n.LC1:\n\t.string"
	.ascii "\t\"\\t.string \\\"\"\n.LC2:\n\t.string\t\"\\t.ascii \\\"\"\n.LC3:"
	.ascii "\n\t.string\t\"\\\\\\\"\"\n.LC4:\n\t.string\t\"\\\\n\"\n.LC5:\n\t.stri"
	.ascii "ng\t\"\\\\t\"\n.LC6:\n\t.string\t\"\\\\\\\\\"\n\t.text\n\t.globl\tdisp"
	.ascii "lay_code\n\t.type\tdisplay_code, @function\ndisplay_co"
	.ascii "de:\n.LFB9:\n\t.cfi_startproc\n\tendbr64\n\tpush\trbp\n\t.cf"
	.ascii "i_def_cfa_offset 16\n\t.cfi_offset 6, -16\n\tmov\trbp, "
	.ascii "rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp, 16\n\tlea\trax"
	.ascii ", code[rip]\n\tmov\tQWORD PTR -8[rbp], rax\n\tmov\tDWORD"
	.ascii " PTR -12[rbp], 0\n\tjmp\t.L18\n.L27:\n\tmov\tedx, DWORD P"
	.ascii "TR -12[rbp]\n\tmovsx\trax, edx\n\timul\trax, rax, 137438"
	.ascii "9535\n\tshr\trax, 32\n\tsar\teax, 4\n\tmov\tecx, edx\n\tsar\te"
	.ascii "cx, 31\n\tsub\teax, ecx\n\timul\tecx, eax, 50\n\tmov\teax, "
	.ascii "edx\n\tsub\teax, ecx\n\ttest\teax, eax\n\tjne\t.L19\n\tcmp\tDW"
	.ascii "ORD PTR -12[rbp], 0\n\tje\t.L20\n\tmov\tesi, 2\n\tlea\trdi,"
	.ascii " .LC0[rip]\n\tcall\tconcat\n.L20:\n\tmov\trax, QWORD PTR "
	.ascii "-8[rbp]\n\tmov\trdi, rax\n\tcall\tmy_strlen\n\tcmp\teax, 49"
	.ascii "\n\tjg\t.L21\n\tmov\tesi, 10\n\tlea\trdi, .LC1[rip]\n\tcall\tc"
	.ascii "oncat\n\tjmp\t.L19\n.L21:\n\tmov\tesi, 9\n\tlea\trdi, .LC2[r"
	.ascii "ip]\n\tcall\tconcat\n.L19:\n\tmov\trax, QWORD PTR -8[rbp]"
	.ascii "\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 34\n\tjne\t.L22\n"
	.ascii "\tmov\tesi, 2\n\tlea\trdi, .LC3[rip]\n\tcall\tconcat\n\tadd\t"
	.ascii "QWORD PTR -8[rbp], 1\n\tjmp\t.L23\n.L22:\n\tmov\trax, QWO"
	.ascii "RD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal,"
	.ascii " 10\n\tjne\t.L24\n\tmov\tesi, 2\n\tlea\trdi, .LC4[rip]\n\tcal"
	.ascii "l\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tjmp\t.L23\n.L24:"
	.ascii "\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, BYTE PTR "
	.ascii "[rax]\n\tcmp\tal, 9\n\tjne\t.L25\n\tmov\tesi, 2\n\tlea\trdi, ."
	.ascii "LC5[rip]\n\tcall\tconcat\n\tadd\tQWORD PTR -8[rbp], 1\n\tj"
	.ascii "mp\t.L23\n.L25:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\te"
	.ascii "ax, BYTE PTR [rax]\n\tcmp\tal, 92\n\tjne\t.L26\n\tmov\tesi,"
	.ascii " 2\n\tlea\trdi, .LC6[rip]\n\tcall\tconcat\n\tadd\tQWORD PTR"
	.ascii " -8[rbp], 1\n\tjmp\t.L23\n.L26:\n\tmov\trax, QWORD PTR -8"
	.ascii "[rbp]\n\tmov\tesi, 1\n\tmov\trdi, rax\n\tcall\tconcat\n\tadd\t"
	.ascii "QWORD PTR -8[rbp], 1\n.L23:\n\tadd\tDWORD PTR -12[rbp]"
	.ascii ", 1\n.L18:\n\tmov\trax, QWORD PTR -8[rbp]\n\tmovzx\teax, "
	.ascii "BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t.L27\n\tmov\tesi, 2\n"
	.ascii "\tlea\trdi, .LC0[rip]\n\tcall\tconcat\n\tnop\n\tleave\n\t.cfi"
	.ascii "_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE9:\n\t.size\tdis"
	.ascii "play_code, .-display_code\n\t.section\t.rodata\n.LC7:\n"
	.ascii "\t.string\t\"1\"\n\t.text\n\t.globl\tdisplay\n\t.type\tdisplay"
	.ascii ", @function\ndisplay:\n.LFB10:\n\t.cfi_startproc\n\tendb"
	.ascii "r64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset"
	.ascii " 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsu"
	.ascii "b\trsp, 64\n\tmov\tQWORD PTR -56[rbp], rdi\n\tmov\tDWORD "
	.ascii "PTR -60[rbp], esi\n\tmov\trax, QWORD PTR fs:40\n\tmov\tQ"
	.ascii "WORD PTR -8[rbp], rax\n\txor\teax, eax\n\tjmp\t.L29\n.L34"
	.ascii ":\n\tmov\trax, QWORD PTR -56[rbp]\n\tmovzx\teax, BYTE PT"
	.ascii "R [rax]\n\tcmp\tal, 35\n\tjne\t.L30\n\tmov\teax, 0\n\tcall\tdi"
	.ascii "splay_code\n\tjmp\t.L31\n.L30:\n\tmov\trax, QWORD PTR -56"
	.ascii "[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 63\n\tjne\t"
	.ascii ".L32\n\tmovzx\teax, BYTE PTR isnotroot[rip]\n\tmovsx\tea"
	.ascii "x, al\n\tlea\tecx, -48[rax]\n\tmov\teax, DWORD PTR -60[r"
	.ascii "bp]\n\tsub\teax, ecx\n\tmov\tedx, eax\n\tlea\trax, -48[rbp]"
	.ascii "\n\tmov\tesi, edx\n\tmov\trdi, rax\n\tcall\titoa\n\tlea\trax, "
	.ascii "-48[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\tedx, "
	.ascii "eax\n\tlea\trax, -48[rbp]\n\tmov\tesi, edx\n\tmov\trdi, rax"
	.ascii "\n\tcall\tconcat\n\tjmp\t.L31\n.L32:\n\tmov\trax, QWORD PTR "
	.ascii "-56[rbp]\n\tmovzx\teax, BYTE PTR [rax]\n\tcmp\tal, 7\n\tjn"
	.ascii "e\t.L33\n\tmov\tesi, 1\n\tlea\trdi, .LC7[rip]\n\tcall\tconca"
	.ascii "t\n\tjmp\t.L31\n.L33:\n\tmov\trax, QWORD PTR -56[rbp]\n\tmo"
	.ascii "v\tesi, 1\n\tmov\trdi, rax\n\tcall\tconcat\n.L31:\n\tadd\tQWO"
	.ascii "RD PTR -56[rbp], 1\n.L29:\n\tmov\trax, QWORD PTR -56[r"
	.ascii "bp]\n\tmovzx\teax, BYTE PTR [rax]\n\ttest\tal, al\n\tjne\t."
	.ascii "L34\n\tnop\n\tmov\trax, QWORD PTR -8[rbp]\n\tsub\trax, QWO"
	.ascii "RD PTR fs:40\n\tje\t.L35\n\tcall\t__stack_chk_fail@PLT\n."
	.ascii "L35:\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_endproc\n"
	.ascii ".LFE10:\n\t.size\tdisplay, .-display\n\t.globl\texec\n\t.t"
	.ascii "ype\texec, @function\nexec:\n.LFB11:\n\t.cfi_startproc\n"
	.ascii "\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_o"
	.ascii "ffset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_cfa_register "
	.ascii "6\n\tsub\trsp, 608\n\tmov\tQWORD PTR -600[rbp], rdi\n\tmov"
	.ascii "\trax, QWORD PTR fs:40\n\tmov\tQWORD PTR -8[rbp], rax\n"
	.ascii "\txor\teax, eax\n\tmov\tBYTE PTR -592[rbp], 0\n\tmov\tBYTE"
	.ascii " PTR -528[rbp], 0\n\tmov\trdx, QWORD PTR -600[rbp]\n\tl"
	.ascii "ea\trax, -592[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcal"
	.ascii "l\tstrcat@PLT\n\tmov\trax, QWORD PTR -600[rbp]\n\tmov\trd"
	.ascii "i, rax\n\tcall\tmy_strlen\n\tsub\teax, 2\n\tcdqe\n\tmov\tBYTE"
	.ascii " PTR -592[rbp+rax], 0\n\tlea\trax, -528[rbp]\n\tmov\trdi"
	.ascii ", rax\n\tcall\tstrlen@PLT\n\tmov\trdx, rax\n\tlea\trax, -52"
	.ascii "8[rbp]\n\tadd\trax, rdx\n\tmov\tDWORD PTR [rax], 7571014"
	.ascii "09\n\tmov\tWORD PTR 4[rax], 8303\n\tmov\tBYTE PTR 6[rax]"
	.ascii ", 0\n\tlea\trdx, -592[rbp]\n\tlea\trax, -528[rbp]\n\tmov\tr"
	.ascii "si, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tlea\trax, -"
	.ascii "528[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx, "
	.ascii "rax\n\tlea\trax, -528[rbp]\n\tadd\trax, rdx\n\tmov\tDWORD P"
	.ascii "TR [rax], 2125614\n\tlea\trdx, -592[rbp]\n\tlea\trax, -5"
	.ascii "28[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@P"
	.ascii "LT\n\tlea\trax, -528[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@"
	.ascii "PLT\n\tmov\trdx, rax\n\tlea\trax, -528[rbp]\n\tadd\trax, rd"
	.ascii "x\n\tmovabs\trcx, 7161681220577817390\n\tmov\tQWORD PTR "
	.ascii "[rax], rcx\n\tmov\tDWORD PTR 8[rax], 544156960\n\tmov\tB"
	.ascii "YTE PTR 12[rax], 0\n\tlea\trdx, -592[rbp]\n\tlea\trax, -"
	.ascii "528[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tstrcat@"
	.ascii "PLT\n\tlea\trax, -528[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen"
	.ascii "@PLT\n\tmov\trdx, rax\n\tlea\trax, -528[rbp]\n\tadd\trax, r"
	.ascii "dx\n\tmov\tWORD PTR [rax], 32\n\tlea\trdx, -592[rbp]\n\tle"
	.ascii "a\trax, -528[rbp]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall"
	.ascii "\tstrcat@PLT\n\tlea\trax, -528[rbp]\n\tmov\trdi, rax\n\tcal"
	.ascii "l\tstrlen@PLT\n\tmov\trdx, rax\n\tlea\trax, -528[rbp]\n\tad"
	.ascii "d\trax, rdx\n\tmov\tDWORD PTR [rax], 757100334\n\tmov\tWO"
	.ascii "RD PTR 4[rax], 25452\n\tmov\tBYTE PTR 6[rax], 0\n\tlea\t"
	.ascii "rax, -528[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov"
	.ascii "\trdx, rax\n\tlea\trax, -528[rbp]\n\tadd\trax, rdx\n\tmov\tD"
	.ascii "WORD PTR [rax], 791552059\n\tmov\tBYTE PTR 4[rax], 0\n"
	.ascii "\tlea\trdx, -592[rbp]\n\tlea\trax, -528[rbp]\n\tmov\trsi, "
	.ascii "rdx\n\tmov\trdi, rax\n\tcall\tstrcat@PLT\n\tlea\trax, -528["
	.ascii "rbp]\n\tmov\trdi, rax\n\tcall\tputs@PLT\n\tlea\trax, -528[r"
	.ascii "bp]\n\tmov\trdi, rax\n\tcall\tsystem@PLT\n\tnop\n\tmov\trax, "
	.ascii "QWORD PTR -8[rbp]\n\tsub\trax, QWORD PTR fs:40\n\tje\t.L"
	.ascii "37\n\tcall\t__stack_chk_fail@PLT\n.L37:\n\tleave\n\t.cfi_d"
	.ascii "ef_cfa 7, 8\n\tret\n\t.cfi_endproc\n.LFE11:\n\t.size\texec"
	.ascii ", .-exec\n\t.section\t.rodata\n.LC8:\n\t.string\t\"w\"\n\t.te"
	.ascii "xt\n\t.globl\texportexec\n\t.type\texportexec, @function"
	.ascii "\nexportexec:\n.LFB12:\n\t.cfi_startproc\n\tendbr64\n\tpus"
	.ascii "h\trbp\n\t.cfi_def_cfa_offset 16\n\t.cfi_offset 6, -16\n"
	.ascii "\tmov\trbp, rsp\n\t.cfi_def_cfa_register 6\n\tsub\trsp, 3"
	.ascii "04\n\tmov\tQWORD PTR -296[rbp], rdi\n\tmov\tDWORD PTR -3"
	.ascii "00[rbp], esi\n\tmov\trax, QWORD PTR fs:40\n\tmov\tQWORD "
	.ascii "PTR -8[rbp], rax\n\txor\teax, eax\n\tmov\tBYTE PTR -272["
	.ascii "rbp], 0\n\tlea\trax, -272[rbp]\n\tmov\trdi, rax\n\tcall\tst"
	.ascii "rlen@PLT\n\tmov\trdx, rax\n\tlea\trax, -272[rbp]\n\tadd\tra"
	.ascii "x, rdx\n\tmov\tDWORD PTR [rax], 1819047251\n\tmov\tWORD "
	.ascii "PTR 4[rax], 24441\n\tmov\tBYTE PTR 6[rax], 0\n\tmovzx\te"
	.ascii "ax, BYTE PTR isnotroot[rip]\n\tmovsx\teax, al\n\tlea\tec"
	.ascii "x, -48[rax]\n\tmov\teax, DWORD PTR -300[rbp]\n\tsub\teax"
	.ascii ", ecx\n\tmov\tedx, eax\n\tlea\trax, -272[rbp]\n\tadd\trax, "
	.ascii "6\n\tmov\tesi, edx\n\tmov\trdi, rax\n\tcall\titoa\n\tlea\trax,"
	.ascii " -272[rbp]\n\tmov\trdi, rax\n\tcall\tstrlen@PLT\n\tmov\trdx"
	.ascii ", rax\n\tlea\trax, -272[rbp]\n\tadd\trax, rdx\n\tmov\tWORD "
	.ascii "PTR [rax], 29486\n\tmov\tBYTE PTR 2[rax], 0\n\tlea\trax,"
	.ascii " -272[rbp]\n\tlea\trsi, .LC8[rip]\n\tmov\trdi, rax\n\tcall"
	.ascii "\tfopen@PLT\n\tmov\tQWORD PTR -280[rbp], rax\n\tcmp\tQWOR"
	.ascii "D PTR -280[rbp], 0\n\tje\t.L42\n\tmov\trdx, QWORD PTR -2"
	.ascii "80[rbp]\n\tmov\trax, QWORD PTR -296[rbp]\n\tmov\trsi, rd"
	.ascii "x\n\tmov\trdi, rax\n\tcall\tfputs@PLT\n\tmov\trax, QWORD PT"
	.ascii "R -280[rbp]\n\tmov\trdi, rax\n\tcall\tfclose@PLT\n\tlea\tra"
	.ascii "x, -272[rbp]\n\tmov\trdi, rax\n\tcall\texec\n\tjmp\t.L38\n.L"
	.ascii "42:\n\tnop\n.L38:\n\tmov\trax, QWORD PTR -8[rbp]\n\tsub\tra"
	.ascii "x, QWORD PTR fs:40\n\tje\t.L41\n\tcall\t__stack_chk_fail"
	.ascii "@PLT\n.L41:\n\tleave\n\t.cfi_def_cfa 7, 8\n\tret\n\t.cfi_en"
	.ascii "dproc\n.LFE12:\n\t.size\texportexec, .-exportexec\n\t.gl"
	.ascii "obl\tmain\n\t.type\tmain, @function\nmain:\n.LFB13:\n\t.cf"
	.ascii "i_startproc\n\tendbr64\n\tpush\trbp\n\t.cfi_def_cfa_offse"
	.ascii "t 16\n\t.cfi_offset 6, -16\n\tmov\trbp, rsp\n\t.cfi_def_c"
	.ascii "fa_register 6\n\tmov\teax, DWORD PTR gen[rip]\n\ttest\te"
	.ascii "ax, eax\n\tjg\t.L44\n\tmov\teax, 0\n\tjmp\t.L45\n.L44:\n\tmov\t"
	.ascii "eax, DWORD PTR gen[rip]\n\tmov\tesi, eax\n\tlea\trdi, co"
	.ascii "de[rip]\n\tcall\tdisplay\n\tmov\teax, DWORD PTR gen[rip]"
	.ascii "\n\tmov\tesi, eax\n\tlea\trdi, buf[rip]\n\tcall\texportexec"
	.ascii "\n\tmov\teax, 0\n.L45:\n\tpop\trbp\n\t.cfi_def_cfa 7, 8\n\tre"
	.ascii "t\n\t.cfi_endproc\n.LFE13:\n\t.size\tmain, .-main\n\t.loca"
	.ascii "l\tp.0\n\t.comm\tp.0,4,4\n\t.ident\t\"GCC: (Ubuntu 10.5.0-"
	.ascii "1ubuntu1~22.04.2) 10.5.0\"\n\t.section\t.note.GNU-stac"
	.ascii "k,\"\",@progbits\n\t.section\t.note.gnu.property,\"a\"\n\t."
	.ascii "align 8\n\t.long\t 1f - 0f\n\t.long\t 4f - 1f\n\t.long\t 5\n"
	.ascii "0:\n\t.string\t \"GNU\"\n1:\n\t.align 8\n\t.long\t 0xc0000002"
	.string "\n\t.long\t 3f - 2f\n2:\n\t.long\t 0x3\n3:\n\t.align 8\n4:\n"
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
	mov	QWORD PTR -8[rbp], rdi
	mov	DWORD PTR -12[rbp], esi
	cmp	DWORD PTR -12[rbp], 0
	jns	.L6
	neg	DWORD PTR -12[rbp]
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	mov	BYTE PTR [rax], 45
.L6:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L8
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	mov	BYTE PTR [rax], 48
	jmp	.L8
.L11:
	mov	edx, DWORD PTR -12[rbp]
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
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -8[rbp], rdx
	mov	edx, ecx
	mov	BYTE PTR [rax], dl
	cmp	DWORD PTR -12[rbp], 0
	je	.L12
	mov	eax, DWORD PTR -12[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 1717986919
	shr	rdx, 32
	sar	edx, 2
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -12[rbp], eax
.L8:
	cmp	DWORD PTR -12[rbp], 0
	jne	.L11
	jmp	.L10
.L12:
	nop
.L10:
	mov	rax, QWORD PTR -8[rbp]
	mov	BYTE PTR [rax], 0
	nop
	pop	rbp
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
	jmp	.L14
.L15:
	add	DWORD PTR -4[rbp], 1
.L14:
	mov	rax, QWORD PTR -24[rbp]
	lea	rdx, 1[rax]
	mov	QWORD PTR -24[rbp], rdx
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L15
	mov	eax, DWORD PTR -4[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	my_strlen, .-my_strlen
	.section	.rodata
.LC0:
	.string	"\"\n"
.LC1:
	.string	"\t.string \""
.LC2:
	.string	"\t.ascii \""
.LC3:
	.string	"\\\""
.LC4:
	.string	"\\n"
.LC5:
	.string	"\\t"
.LC6:
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
	mov	DWORD PTR -12[rbp], 0
	jmp	.L18
.L27:
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
	jne	.L19
	cmp	DWORD PTR -12[rbp], 0
	je	.L20
	mov	esi, 2
	lea	rdi, .LC0[rip]
	call	concat
.L20:
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	my_strlen
	cmp	eax, 49
	jg	.L21
	mov	esi, 10
	lea	rdi, .LC1[rip]
	call	concat
	jmp	.L19
.L21:
	mov	esi, 9
	lea	rdi, .LC2[rip]
	call	concat
.L19:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 34
	jne	.L22
	mov	esi, 2
	lea	rdi, .LC3[rip]
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L23
.L22:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 10
	jne	.L24
	mov	esi, 2
	lea	rdi, .LC4[rip]
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L23
.L24:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 9
	jne	.L25
	mov	esi, 2
	lea	rdi, .LC5[rip]
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L23
.L25:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 92
	jne	.L26
	mov	esi, 2
	lea	rdi, .LC6[rip]
	call	concat
	add	QWORD PTR -8[rbp], 1
	jmp	.L23
.L26:
	mov	rax, QWORD PTR -8[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
	add	QWORD PTR -8[rbp], 1
.L23:
	add	DWORD PTR -12[rbp], 1
.L18:
	mov	rax, QWORD PTR -8[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L27
	mov	esi, 2
	lea	rdi, .LC0[rip]
	call	concat
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	display_code, .-display_code
	.section	.rodata
.LC7:
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
	jmp	.L29
.L34:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 35
	jne	.L30
	mov	eax, 0
	call	display_code
	jmp	.L31
.L30:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 63
	jne	.L32
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
	jmp	.L31
.L32:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	cmp	al, 7
	jne	.L33
	mov	esi, 1
	lea	rdi, .LC7[rip]
	call	concat
	jmp	.L31
.L33:
	mov	rax, QWORD PTR -56[rbp]
	mov	esi, 1
	mov	rdi, rax
	call	concat
.L31:
	add	QWORD PTR -56[rbp], 1
.L29:
	mov	rax, QWORD PTR -56[rbp]
	movzx	eax, BYTE PTR [rax]
	test	al, al
	jne	.L34
	nop
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
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
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	exec, .-exec
	.section	.rodata
.LC8:
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
	lea	rsi, .LC8[rip]
	mov	rdi, rax
	call	fopen@PLT
	mov	QWORD PTR -280[rbp], rax
	cmp	QWORD PTR -280[rbp], 0
	je	.L42
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
	jmp	.L38
.L42:
	nop
.L38:
	mov	rax, QWORD PTR -8[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L41
	call	__stack_chk_fail@PLT
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	exportexec, .-exportexec
	.globl	main
	.type	main, @function
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
	jg	.L44
	mov	eax, 0
	jmp	.L45
.L44:
	mov	eax, DWORD PTR gen[rip]
	mov	esi, eax
	lea	rdi, code[rip]
	call	display
	mov	eax, DWORD PTR gen[rip]
	mov	esi, eax
	lea	rdi, buf[rip]
	call	exportexec
	mov	eax, 0
.L45:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.local	p.0
	.comm	p.0,4,4
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~22.04.2) 10.5.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
