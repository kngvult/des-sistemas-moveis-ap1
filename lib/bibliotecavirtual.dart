import 'livro.dart';

/// Classe que representa a biblioteca virtual
/// Responsável por gerenciar os livros e suas operações
class BibliotecaVirtual {
  final List<Livro> _livros = [];

  /// Cadastrar novo livro
  void cadastrarLivro(Livro livro) {
    /// Verifica se já existe um livro com o mesmo ID
    if (_livros.any((l) => l.id == livro.id)) {
      print(
          'Erro: Já existe um livro com ID ${livro.id}. Cadastro não realizado.');
      return;
    }
    _livros.add(livro);
    print('Livro "${livro.titulo}" cadastrado com sucesso!');
  }

  /// Remover livro por ID
  void removerPorId(String id) {
    _livros.removeWhere((livro) => livro.id == id);
  }

  /// Listar todos os livros
  void listarLivros() {
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado.');
      return;
    }
    for (var livro in _livros) {
      print(livro);
    }
  }

  /// Buscar livro por título
  List<Livro> buscarPorTitulo(String titulo) {
    return _livros
        .where((livro) =>
            livro.titulo.toLowerCase().contains(titulo.toLowerCase()))
        .toList();
  }

  /// Buscar livro por autor
  List<Livro> buscarPorAutor(String autor) {
    return _livros
        .where(
            (livro) => livro.autor.toLowerCase().contains(autor.toLowerCase()))
        .toList();
  }

  /// Buscar livro por gênero
  List<Livro> buscarPorGenero(String genero) {
    return _livros
        .where((livro) =>
            livro.genero.toLowerCase().contains(genero.toLowerCase()))
        .toList();
  }

  /// Aplicar desconto a todos os livros de um autor
  void aplicarDescontoPorAutor(String autor, double percentual) {
    final livrosAutor = buscarPorAutor(autor);
    if (livrosAutor.isEmpty) {
      print('Nenhum livro do autor "$autor" encontrado.');
      return;
    }

    for (var livro in livrosAutor) {
      final precoAntigo = livro.preco;
      livro.preco = livro.preco - (livro.preco * (percentual / 100));
      print(
          '• ${livro.titulo}: R\$ ${precoAntigo.toStringAsFixed(2)} → R\$ ${livro.preco.toStringAsFixed(2)}');
    }
  }

  /// Reverter preços para o valor original
  void reverterPrecos() {
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado.');
      return;
    }
    for (var livro in _livros) {
      livro.preco = livro.precoOriginal;
    }
    print('Todos os preços foram revertidos para o valor original.');
  }
}
