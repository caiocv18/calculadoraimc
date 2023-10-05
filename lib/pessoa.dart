class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  // Construtor da classe
  Pessoa({String? nome, double? peso, double? altura}){
    _nome = nome ?? 'Nome não especificado';
    _peso = peso ?? 0;
    _altura = altura ?? 0;
  }

  // Métodos getters para acessar os atributos privados
  String? get nome => _nome;
  double? get peso => _peso;
  double? get altura => _altura;

  // Método para exibir informações da pessoa
  void mostrarInfomacoes() {
    print('Nome: $_nome');
    print('Peso: $_peso kg');
    print('Altura em m: $altura m');
  }
}