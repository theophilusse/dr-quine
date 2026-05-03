CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = Colleen.c Grace.c Sully.c
OBJ = $(SRC:%.c=obj/%.o)
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

ASM      = as
ASMFLAGS =
LINK_ASM  = $(CC) -o $@ $^ -lc

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
	rm -f python/Grace_kid.py
	rm -f python/Sully_*.py

re: fclean all

obj/%.o: %.c | obj
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all obj tool clean fclean killkid re
