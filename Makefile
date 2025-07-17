# Variáveis
CC = gcc
CFLAGS = -Wall -Iinclude
SRC_DIR = src
INCLUDE_DIR = include
BIN_DIR = bin
OBJ_DIR = obj

# Nome do executável
TARGET = $(BIN_DIR)/programa

# Obtém todos os arquivos .c da pasta src
SRCS = $(wildcard $(SRC_DIR)/*.c)

# Converte os arquivos .c em arquivos .o dentro de obj/
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

# Regra principal
all: setup $(TARGET)

# Criação das pastas necessárias
setup:
	@if not exist $(BIN_DIR) mkdir $(BIN_DIR)
	@if not exist $(OBJ_DIR) mkdir $(OBJ_DIR)
	@if not exist instancias_output mkdir instancias_output

# Compilação do executável
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Compilação dos objetos individuais
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpeza dos binários e objetos
clean:
	@if exist $(BIN_DIR) rmdir /s /q $(BIN_DIR)
	@if exist $(OBJ_DIR) rmdir /s /q $(OBJ_DIR)
	@if exist instancias_output rmdir /s /q instancias_output

.PHONY: all setup clean
