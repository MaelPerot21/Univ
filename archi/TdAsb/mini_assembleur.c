#include "mini_assembleur.h"

word R0, R1, R2, R3;

void affstatut(word n) {
    JUMPS(n, neg);
    printstring("NATUREL\n");
    JUMP(end);
neg:
    printstring("NEGATIF\n");
end:
}

void affsigne(word n) {
    JUMPZ(n, zer);
    JUMPS(n, neg);
    printstring("NATUREL\n");
    JUMP(end);
zer:
    printstring("NUL\n");
    JUMP(end);
neg:
    printstring("NEGATIF\n");
end:
}

void affformule(word n) {
    MOV(R0, n);
    ADD(R0, R0, 1);
    MOV(R1, n);
    MUL(R1, R1, R0);
    DIV(R1, R1, 2);
    printdec(R1);
}

void affdist2(word xA, word yA, word xB, word yB) {
    MOV(R0, xB);
    MOV(R1, yB);
    SUB(R0, R0, xA);
    SUB(R1, R1, yA);
    MUL(R0, R0, R0);
    MUL(R1, R1, R1);
    ADD(R0, R0, R1);
    printdec(R0);
}

void enumerer(word n) {
    JUMPS(n, end);
    MOV(R1, 0);
    MOV(R0, n);
loop:
    JUMPZ(R0, end);
    ADD(R1, R1, 1);
    printdec(R1);
    printstring(" ");
    SUB(R0, R0, 1);
    JUMP(loop);
end:
}

void affnbits(word n) {
    MOV(R0, WORDSIZE);
    MOV(R1, 0);
    MOV(R2, n);
    MOV(R3, 0);
loop:
    MOD(R3, R2, 2);
    JUMPNZ(R3, incr);
ret:
    SHR(R2, R2, 1);
    SUB(R0, R0, 1);
    JUMPZ(R0, end);
    JUMP(loop);
incr:
    ADD(R1, R1, 1);
    JUMP(ret);
end:
    printdec(R1);
}

int main(void)
{
    affstatut(-7);
    affsigne(0);
    affformule(2);
    printstring("\n");
    affdist2(1, 2, 3, -1);
    printstring("\n");
    enumerer(10);
    printstring("\n");
    affnbits(151);
    printstring("\n");
    return 0;
}
