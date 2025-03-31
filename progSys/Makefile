CC=gcc
CFLAGS=-std=c99 -Wall -Wextra -Werror -pedantic

OBJ=tp6.o

test: $(OBJ)
	$(CC) -o $@ $^
	./$@

leak: CFLAGS +=-g
leak: $(OBJ)
	$(CC) -o $@ $^
	valgrind --leak-check=full ./$@

gdb: CFLAGS +=-g
gdb: $(OBJ)
	$(CC) -o $@ $^

clean:
	$(RM) test leak gdb $(OBJ) vgcore*
