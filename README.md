# Biblioteca Virtual em Dart

## Atividade Prática - Avaliativa - AP1

### Este projeto implementa uma **biblioteca virtual** em Dart, permitindo o cadastro, listagem, busca, remoção e aplicação de descontos em livros diretamente pelo terminal. O programa possui um **menu interativo** para facilitar o uso.
---
## Pré-requisitos

- [Dart SDK](https://dart.dev/get-dart) instalado
- Terminal ou prompt de comando

---
## Como executar

1. Abra o terminal e navegue até a pasta do projeto:
```bash
cd "caminho_da_pasta\ap1\biblioteca"
```
2. Atualize as dependências do projeto (opcional, apenas para garantir que o Dart reconheça o projeto):
```bash
dart pub get
```
3. Execute o programa:
```bash
dart run bin/main.dart
```
---

## Menu Interativo

Ao rodar o programa, será exibido o seguinte menu:
```bash
===== Biblioteca Virtual =====
1. Cadastrar livro
2. Listar todos os livros
3. Buscar livro por título
4. Buscar livro por autor
5. Buscar livro por gênero
6. Remover livro por ID
7. Aplicar desconto a livros de um autor
8. Reverter preços para valor original
0. Sair
======================
Escolha uma opção:
```

### Exemplo de cadastro:
```bash
Escolha uma opção: 1
ID: 001
Título: Frankenstein
Autor: Mary Shelley
Ano de publicação: 1818
Gênero: Terror
ISBN: 9788537808122
Preço (R$): 49.90
Livro "Frankenstein" cadastrado com sucesso!
```
## Funcionalidades:

### 1. Cadastrar livro: Permite inserir um novo livro no sistema, solicitando:

- ID (único)
- Título
- Autor
- Ano de publicação
- Gênero
- ISBN
- Preço (R$)

⚠️ Se o ID já existir, o cadastro será recusado.

### 2. Listar todos os livros: Mostra todos os livros cadastrados, com todos os dados, inclusive o preço.

### 3. Buscar livro por título: Pesquisa livros que contenham a palavra-chave no título.

### 4. Buscar livro por autor: Pesquisa livros do autor informado.

### 5. Buscar livro por gênero: Pesquisa livros de mesmo gênero.

### 6. Remover livro por ID: Remove um livro específico com base no ID.

### 7. Aplicar desconto a livros de um autor: Aplica percentual de desconto em todos os livros de um autor. O preço anterior e o novo preço são exibidos.

### 8. Reverter preços para valor original: Restaura os preços originais de todos os livros cadastrados, desfazendo qualquer desconto aplicado.

### 0. Sair: Encerra o programa.
---
## Observações

- O programa armazena os livros apenas em memória. Ao fechar o terminal, todos os dados serão perdidos.

- IDs duplicados não são permitidos, cada livro deve ter um ID único.

- Ao concluir o cadastro de um livro você é levado de volta ao menu principal

---

### Autora
Desenvolvido por: Ana Quézia de Oliveira Souza

Disciplina: Desenvolvimento de Sistemas Móveis
