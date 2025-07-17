/*
 * Algoritmo: Selection Sort (Ordenação por Seleção)
 *
 * Descrição:
 * Percorre o vetor e, a cada passo, encontra o menor elemento do trecho 
 * ainda não ordenado, trocando-o com a posição inicial desse trecho.
 *
 * Características:
 * - Complexidade no pior caso: O(n²)
 * - Não é estável (pode alterar a ordem de elementos iguais)
 * - Realiza o número mínimo possível de trocas (no máximo n-1)
 */

#include "selection_sort.h"

void selection_sort(int v[], int tam) {
    for (int i = 0; i < tam - 1; i++) {
        int min = i; // Salva a posição do menor valor

        for (int j = i + 1; j < tam; j++) {
            if (v[j] < v[min]) { // Verifica se há valor menor à frente
                min = j;         // Atualiza o índice do menor valor
            }
        }

        // Troca somente se necessário
        if (min != i) {
            int aux = v[i];
            v[i] = v[min];
            v[min] = aux;
        }
    }
}
