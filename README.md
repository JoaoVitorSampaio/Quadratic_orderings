# 🔢 Ordenação de Vetores com Selection Sort e Insertion Sort

## 📄 Descrição

Este projeto implementa dois algoritmos clássicos de ordenação em linguagem C: **Selection Sort** e **Insertion Sort**.

O programa:

- Lê dados numéricos de arquivos de entrada.
- Ordena os valores utilizando ambos os algoritmos.
- Mede e exibe o tempo de execução de cada um.
- Grava os resultados ordenados em arquivos de saída separados.

Ideal para fins didáticos em disciplinas de **Estrutura de Dados** ou **Algoritmos e Programação**.

---

## 🗂️ Estrutura dos Diretórios

```
projeto_ordenacao/
├── include/             # Arquivos de cabeçalho (.h)
│   ├── insertion_sort.h
│   └── selection_sort.h
├── src/                 # Implementações dos algoritmos e main
│   ├── insertion_sort.c
│   ├── selection_sort.c
│   └── main.c
├── instancias_num/      # Arquivos de entrada (.in)
│   ├── num.10000.1.in
│   └── ...
├── instancias_output/   # Arquivos de saída gerados
│   ├── sorted_numbers1.out  → saída do Selection Sort
│   └── sorted_numbers2.out  → saída do Insertion Sort
├── bin/                 # Executável final (criado via make)
├── obj/                 # Objetos de compilação (.o)
└── Makefile             # Script de compilação
```

---

## ⚙️ Como Compilar e Executar

### 1. Compilação

Compile todo o projeto com:

```bash
make
```

O executável será gerado na pasta `bin/` com o nome `programa`.

### 2. Execução

Rode o programa com:

```bash
./bin/programa
```

O programa irá:

- Ler os números do arquivo definido em `main.c`.
- Executar e comparar o desempenho do **Selection Sort** e do **Insertion Sort**.
- Gerar os arquivos de saída com os valores ordenados.

---

## 🖥️ Exemplo de Saída no Terminal

```text
Tempo de execucao do selection_sort: 0.042000000 segundos
Tempo de execucao do insertion_sort: 0.033000000 segundos
Ordenacao concluida!
```

⏱️ Os tempos podem variar de acordo com o tamanho da instância e o desempenho da máquina, mas tendem a ser similares para vetores pequenos.

---

## 📚 Explicação dos Algoritmos

### 🔹 Selection Sort

- Percorre o vetor procurando o menor elemento e o posiciona corretamente.
- Troca no máximo **(n - 1)** vezes.
- **Complexidade:** O(n²)
- **Estável?** ❌ Não (pode alterar a ordem de elementos iguais)

### 🔹 Insertion Sort

- Insere cada elemento na posição correta da parte já ordenada do vetor.
- Mais eficiente para listas pequenas ou quase ordenadas.
- **Complexidade:** O(n²)
- **Estável?** ✅ Sim

---

## 🧪 Observações

- As instâncias de teste devem estar no diretório `instancias_num/` no formato `.in`.
- Os arquivos de saída serão salvos automaticamente em `instancias_output/`.
- O código é modular, com separação clara entre **headers**, **implementações** e a **função principal**.

---

## 📌 Requisitos

- Compilador `gcc`
- `make` instalado
- Sistema operacional: Linux, macOS ou Windows (com ajuste de comandos no Makefile)
