#!/usr/bin/sh

as -o Sully.o $1.s
gcc -o asm/Sully Sully.o -lc
