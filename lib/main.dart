import 'dart:io';
import 'livro.dart';
import 'bibliotecavirtual.dart';

void main() {
  final biblioteca = BibliotecaVirtual();

  while (true) {
    print('\n===== Biblioteca Virtual =====');
    print('1. Cadastrar livro');
    print('2. Listar todos os livros');
    print('3. Buscar livro por título');
    print('4. Buscar livro por autor');
    print('5. Buscar livro por gênero');
    print('6. Remover livro por ID');
    print('7. Aplicar desconto a livros de um autor');
    print('8. Reverter preços para valor original');
    print('0. Sair');
    stdout.write('Escolha uma opção: ');

    final opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        cadastrarLivro(biblioteca);
        break;
      case '2':
        biblioteca.listarLivros();
        break;
      case '3':
        stdout.write('Digite o título: ');
        final titulo = stdin.readLineSync() ?? '';
        final encontrados = biblioteca.buscarPorTitulo(titulo);
        encontrados.isEmpty
            ? print('Nenhum livro encontrado.')
            : encontrados.forEach(print);
        break;
      case '4':
        stdout.write('Digite o autor: ');
        final autor = stdin.readLineSync() ?? '';
        final encontrados = biblioteca.buscarPorAutor(autor);
        encontrados.isEmpty
            ? print('Nenhum livro encontrado.')
            : encontrados.forEach(print);
        break;
      case '5':
        stdout.write('Digite o gênero: ');
        final genero = stdin.readLineSync() ?? '';
        final encontrados = biblioteca.buscarPorGenero(genero);
        encontrados.isEmpty
            ? print('Nenhum livro encontrado.')
            : encontrados.forEach(print);
        break;
      case '6':
        stdout.write('Digite o ID do livro a remover: ');
        final id = stdin.readLineSync() ?? '';
        biblioteca.removerPorId(id);
        print('Livro removido da biblioteca.');
        break;
      case '7':
        stdout.write('Digite o autor: ');
        final autor = stdin.readLineSync() ?? '';
        stdout.write('Digite o percentual de desconto: ');
        final percentual = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
        biblioteca.aplicarDescontoPorAutor(autor, percentual);
        break;
      case '8':
        biblioteca.reverterPrecos();
        break;
      case '0':
        print('Saindo...');
        return;
      default:
        print('Opção inválida, tente novamente.');
    }
  }
}

/// Função para cadastrar livro via terminal
void cadastrarLivro(BibliotecaVirtual biblioteca) {
  stdout.write('ID: ');
  final id = stdin.readLineSync() ?? '';

  stdout.write('Título: ');
  final titulo = stdin.readLineSync() ?? '';

  stdout.write('Autor: ');
  final autor = stdin.readLineSync() ?? '';

  stdout.write('Ano de publicação: ');
  final ano = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Gênero: ');
  final genero = stdin.readLineSync() ?? '';

  stdout.write('ISBN: ');
  final isbn = stdin.readLineSync() ?? '';

  stdout.write('Preço (R\$): ');
  final preco = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  final livro = Livro(
    id: id,
    titulo: titulo,
    autor: autor,
    anoPublicacao: ano,
    genero: genero,
    isbn: isbn,
    preco: preco,
  );

  biblioteca.cadastrarLivro(livro);
}
