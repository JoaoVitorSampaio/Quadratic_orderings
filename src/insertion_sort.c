/*
 * Algoritmo: Insertion Sort (Ordenação por Inserção)
 *
 * Descrição:
 * Percorre o vetor da esquerda para a direita, começando do segundo elemento.
 * A cada iteração, o elemento atual (pivô) é comparado com os anteriores e inserido 
 * na posição correta, deslocando os valores maiores para a direita.
 *
 * Características:
 * - Complexidade no pior caso: O(n²)
 * - Estável (mantém a ordem relativa de elementos iguais)
 * - Eficiente para vetores pequenos ou quase ordenados
 */

#include "insertion_sort.h"

void insertion_sort(int v[], int tam) {
    for (int i = 1; i < tam; i++) {
        int pivo = v[i];       // Pivô para salvar o elemento atual
        int j = i - 1;         // Começa da posição anterior

        // Enquanto j >= 0 e v[j] > pivo, empurra para a direita
        while (j >= 0 && v[j] > pivo) {
            v[j + 1] = v[j];
            j--;
        }

        v[j + 1] = pivo;       // Insere o pivô na posição correta
    }
}
