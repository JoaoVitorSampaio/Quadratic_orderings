# 🔢 Ordenação de Vetores com Selection Sort e Insertion Sort

## 📄 Descrição

Este projeto implementa dois algoritmos clássicos de ordenação em linguagem C: **Selection Sort** e **Insertion Sort**.

O programa:

- Lê dados numéricos de arquivos de entrada.
- Ordena os valores utilizando ambos os algoritmos.
- Mede e exibe o tempo de execução de cada um.
- Grava os resultados ordenados em arquivos de saída separados.

Ideal para fins didáticos em disciplinas de **Estrutura de Dados I** ou **Algoritmos e Programação**.

---

## 🗂️ Estrutura dos Diretórios

```
projeto_ordenacao/
├── include/               # Arquivos de cabeçalho (.h)
│   ├── insertion_sort.h
│   └── selection_sort.h
├── src/                   # Implementações dos algoritmos e main
│   ├── insertion_sort.c
│   ├── selection_sort.c
│   └── main.c
├── instancias_num/        # Arquivos de entrada (.in)
│   ├── num.10000.1.in
│   └── ...
├── instancias_output/     # Arquivos de saída gerados
│   ├── sorted_numbers1.out  → saída do Selection Sort
│   └── sorted_numbers2.out  → saída do Insertion Sort
├── bin/                   # Executável final (criado via make)
├── obj/                   # Objetos de compilação (.o)
└── Makefile               # Script de compilação
```

---

## ⚙️ Como Compilar e Executar

### 1. Compilar

Abra o terminal na raiz do projeto e digite:

```bash
make
```

Isso irá:

- Criar as pastas `bin/`, `obj/` e `instancias_output/` se não existirem.
- Compilar os arquivos `.c` e gerar o executável `bin/programa`.

### 2. Executar

Após a compilação, rode:

```bash
./bin/programa
```

O programa irá:

- Ler os números de um arquivo de entrada definido em `main.c`.
- Ordenar os dados com ambos os algoritmos.
- Exibir o tempo de execução de cada um.
- Salvar os resultados em arquivos `.out`.

---

## 🖥️ Exemplo de Saída no Terminal

```text
Tempo de execucao do selection_sort: 0.042000000 segundos
Tempo de execucao do insertion_sort: 0.033000000 segundos
Ordenacao concluida!
```

📌 Os tempos variam conforme o tamanho do vetor e o desempenho da máquina.

---

## 📚 Explicação dos Algoritmos

### 🔹 Selection Sort

- Encontra o menor elemento e o posiciona no início.
- Troca no máximo **(n - 1)** vezes.
- **Complexidade:** O(n²)
- **Estável?** ❌ Não (pode mudar a ordem relativa de elementos iguais)

### 🔹 Insertion Sort

- Insere cada elemento na posição correta da parte já ordenada.
- Eficiente para listas pequenas ou quase ordenadas.
- **Complexidade:** O(n²)
- **Estável?** ✅ Sim

---

## 🧪 Observações

- Os arquivos de entrada devem estar na pasta `instancias_num/`, no formato `.in`.
- Os arquivos de saída serão salvos automaticamente em `instancias_output/`.
- O código é modular, com separação clara entre **headers**, **implementações** e **função principal**.
- Você pode editar o nome do arquivo de entrada diretamente no `main.c`.

---

## 📌 Requisitos

- Compilador `gcc`
- `make` instalado
- Sistema operacional compatível com Unix (Linux/macOS/Git Bash/WSL no Windows)
