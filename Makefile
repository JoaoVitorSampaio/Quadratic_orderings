# Variáveis
CC = gcc
CFLAGS = -Wall -Iinclude
SRC_DIR = src
BIN_DIR = bin
OBJ_DIR = obj
INCLUDE_DIR = include

TARGET = $(BIN_DIR)/programa

SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# Regra principal
all: setup $(TARGET)

# Criação de diretórios no Linux/Git Bash
setup:
	mkdir -p $(BIN_DIR)
	mkdir -p $(OBJ_DIR)
	mkdir -p instancias_output

# Compila os .o e gera o executável
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Compila cada .c para .o
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpeza
clean:
	rm -rf $(BIN_DIR) $(OBJ_DIR) instancias_output

.PHONY: all setup clean
