// Un mini simulateur d'assembleur dans du C -- olivier.ploton@univ-tours.fr

#ifndef mini_assembleur_H
#define mini_assembleur_H

#include <stdio.h>

// word: type signé d'un mot mémoire (doit avoir même taille qu'un pointeur).
typedef long word;

// nombre d'octets dans un mot
#define WORDSIZE (sizeof(word))

// trace (debug): affiche la position dans le programme et une valeur
#define TRACE(val) \
    printf("%s:%d: %s = 0x%lX = %ld\n", __FILE__, __LINE__, #val, val, val)

// Ne fait rien (No OPeration).
#define NOP() ((void)0)

// accès mémoire: B = byte (non signé), W = word
#define LOADB(reg, addr) (reg) = *((unsigned char *)(addr))
#define LOADW(reg, addr) (reg) = *((word *)(addr))
#define STOREB(reg, addr) *((unsigned char *)(addr)) = (reg)
#define STOREW(reg, addr) *((word *)(addr)) = (reg)

// lecture immédiate / registre
#define MOV(a, b) (a) = (b)

// opérations arithmétiques
#define NEG(a, b) (a) = -(b)
#define ADD(a, b, c) (a) = (b) + (c)
#define SUB(a, b, c) (a) = (b) - (c)
#define MUL(a, b, c) (a) = (b) * (c)
#define DIV(a, b, c) (a) = (b) / (c)
#define MOD(a, b, c) (a) = (b) % (c)

// opérations logiques
#define NOT(a, b) (a) = ~(b)
#define AND(a, b, c) (a) = (b) & (c)
#define OR(a, b, c) (a) = (b) | (c)
#define XOR(a, b, c) (a) = (b) ^ (c)

// décalages: Left, Right (bit fort <- 0), Arith (bit de signe recopié)
#define SHL(a, b, c) (a) = (b) << (c)
#define SHR(a, b, c) (a) = (word) (((unsigned long)(b)) >> (c))
#define SHA(a, b, c) (a) = (b) >> (c)

// sauts: JUMP ? BRANCH ?
#define JUMP(label) goto label

// sauts conditionnels: JUMP if Zero / Not Zero, Sign / Not Sign. Sign <=> < 0
// malheureusement on ne peut pas implémenter simplement ni Carry ni Overflow
#define JUMPZ(reg, label) if ((reg) == 0) goto label
#define JUMPNZ(reg, label) if ((reg) != 0) goto label
#define JUMPS(reg, label) if ((reg) < 0) goto label
#define JUMPNS(reg, label) if ((reg) >= 0) goto label

// exécute un appel système. Facultatif. Ex: SYSTEM(printchar, R0)
#define SYSTEM(proc, val) proc(val)

// Affichages: hexa, décimal, caractère, message, ligne.
// À appeler soit directement, soit avec SYSTEM.
#define printhex(val) printf("0x%lX", val)
#define printdec(val) printf("%ld", val)
#define printchar(val) printf("%c", (char)(val))
#define printstring(val) printf("%s", (char *)(val))

#endif // mini_assembleur_H
