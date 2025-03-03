#include <stdio.h>
#include <stdlib.h>

#define LEN 54

struct matrice {
    int nb_ligne;
    int nb_colonne;
    int **m;
};

struct matrice alloue_matrice(int l, int c) {
    struct matrice mat;
    mat.nb_ligne = l;
    mat.nb_colonne = c;

    int **arr = malloc(l * sizeof(int *));
    for (int i = 0; i < l; i++) {
        arr[i] = calloc(c, sizeof(int));
    }
    mat.m = arr;

    return mat;
}

void printMatrice(struct matrice mat) {
    for (int i = 0; i < mat.nb_ligne; i++) {
        for (int j = 0; j < mat.nb_colonne; j++) {
            printf("%d ", mat.m[i][j]);
        }
        printf("\n");
    }
}

struct matrice matMul(struct matrice mat1, struct matrice mat2) {
    struct matrice mat = alloue_matrice(mat1.nb_ligne, mat2.nb_colonne);
    mat.nb_ligne = mat1.nb_ligne;
    mat.nb_colonne = mat2.nb_colonne;

    if (mat1.nb_colonne == mat2.nb_ligne)
        for (int i = 0; i < mat.nb_ligne; i++) {
            for (int j = 0; j < mat.nb_colonne; j++) {
                for (int k = 0; k < mat1.nb_colonne; k++) {
                    mat.m[i][j] += mat1.m[i][k] * mat2.m[k][j];
                }
            }
        }

    return mat;
}

void freeMat(struct matrice mat) {
    for (int i = 0; i < mat.nb_ligne; i++) {
        free(mat.m[i]);
    }
    free(mat.m);
}

void decrypt(unsigned char msg[], unsigned char key) {
    for (int i = 0; i < LEN; i++) {
        printf("%c ", msg[i] ^ key);
        key = (key << 1) | (key & (1 << 7));
    }
}

int main(void)
{
    unsigned char cle = 203;
    unsigned char msg[LEN] = { 233, 251, 74, 126, 207, 28, 145, 151, 174, 227,
                               3, 126, 223, 94, 151, 150, 191, 183, 94, 43, 155,
                               16, 158, 197, 165, 176, 86, 126, 221, 89, 147,
                               144, 168, 226, 65, 126, 213, 23, 149, 151, 174,
                               243, 70, 59, 210, 13, 210, 150, 174, 244, 93, 59,
                               200, 91 };

    decrypt(msg, cle);

    return 0;
}
