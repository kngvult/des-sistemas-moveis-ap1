/// Classe que representa um livro na biblioteca virtual
/// Contém todas as informações básicas de um livro
class Livro {
  String id; // Identificador único
  String titulo;
  String autor;
  int anoPublicacao;
  String genero;
  String isbn;
  double preco; // Preço atual do livro
  double precoOriginal; // Mantém o valor original para reverter descontos

  /// Construtor da classe Livro
  Livro({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
    required this.isbn,
    required this.preco,
  }) : precoOriginal = preco;

  /// Método para converter o livro em formato de mapa
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'autor': autor,
      'anoPublicacao': anoPublicacao,
      'genero': genero,
      'isbn': isbn,
      'preco': preco,
    };
  }

  /// Método para criar um livro a partir de um mapa
  factory Livro.fromMap(Map<String, dynamic> map) {
    return Livro(
      id: map['id'],
      titulo: map['titulo'],
      autor: map['autor'],
      anoPublicacao: map['anoPublicacao'],
      genero: map['genero'],
      isbn: map['isbn'],
      preco: map['preco'],
    );
  }

  @override
  String toString() {
    return '[$id] $titulo - $autor ($anoPublicacao) | '
        'Gênero: $genero | ISBN: $isbn | '
        'Preço: R\$ ${preco.toStringAsFixed(2)}';
  }
}
