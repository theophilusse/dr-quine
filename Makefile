CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = Colleen.c Grace.c Sully.c
OBJ = $(SRC:%.c=obj/%.o)
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	ifneq ($(wildcard /opt/homebrew/bin/x86_64-elf-as),)
		ASM = /opt/homebrew/bin/x86_64-elf-as
		LD  = /opt/homebrew/bin/x86_64-elf-ld
	else ifneq ($(wildcard /usr/local/bin/x86_64-elf-as),)
		ASM = /usr/local/bin/x86_64-elf-as
		LD  = /usr/local/bin/x86_64-elf-ld
	else
		$(error "GNU as not found. Run: brew install x86_64-elf-binutils")
	endif
	ASMFLAGS = --64
	# Link ELF object with GNU ld, using libgcc + libc from the cross toolchain
	LIBC     := $(shell $(CC) -print-file-name=libc.a 2>/dev/null)
	LIBGCC   := $(shell $(CC) -print-libgcc-file-name 2>/dev/null)
	LINK_ASM  = $(LD) -o $@ $^ $(LIBGCC) $(LIBC) --dynamic-linker /lib64/ld-linux-x86-64.so.2
else
	ASM      = as
	ASMFLAGS =
	LINK_ASM  = $(CC) -o $@ $^ -lc
endif

all: obj $(COLLEEN) $(GRACE) $(SULLY) tool

obj:
	mkdir -p obj

$(COLLEEN): obj/Colleen.o
	$(CC) $(CFLAGS) -o c/$@ $^
	$(ASM) $(ASMFLAGS) -o obj/$@_asm.o Colleen.s
	$(CC) -o asm/$@ obj/$@_asm.o -lc

$(GRACE): obj/Grace.o
	$(CC) $(CFLAGS) -o c/$@ $^
	$(ASM) $(ASMFLAGS) -o obj/$@_asm.o Grace.s
	$(CC) -o asm/$@ obj/$@_asm.o -lc

$(SULLY): obj/Sully.o
	$(CC) $(CFLAGS) -o c/$@ $^
	$(ASM) $(ASMFLAGS) -o obj/$@_asm.o Sully.s
	$(CC) -o asm/$@ obj/$@_asm.o -lc

tool:
	$(CC) -o tool/generate tool/generate.c
	$(CC) -o tool/generate_asm tool/generate_asm.c

clean:
	rm -rf obj

fclean: clean killkid
	rm -f c/$(COLLEEN) c/$(GRACE) c/$(SULLY)
	rm -f asm/$(COLLEEN) asm/$(GRACE) asm/$(SULLY)
	rm tool/generate
	rm tool/generate_asm

killkid:
	rm -f Grace_kid*
	rm -f Sully_*
	rm -f asm/Grace_kid*
	rm -f asm/Sully_*
	rm -f c/Grace_kid*
	rm -f c/Sully_*

re: fclean all

obj/%.o: %.c | obj
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all obj tool clean fclean killkid re
