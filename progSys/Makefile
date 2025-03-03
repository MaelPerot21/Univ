CC=gcc
CFLAGS=-std=c99 -Wall -Wextra -Werror -pedantic -Wvla

OBJ=prog2.o

test: $(OBJ)
	$(CC) -o $@ prog2
	./$@ abcabcabc

leak: CFLAGS +=-g
leak: $(OBJ)
	$(CC) -o $@ $^
	valgrind --leak-check=full ./$@

gdb: CFLAGS +=-g
gdb: $(OBJ)
	$(CC) -o $@ $^

clean:
	$(RM) test leak gdb $(OBJ) vgcore*
