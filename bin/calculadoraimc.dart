import 'dart:io';

import 'package:calculadoraimc/pessoa.dart';

void main(List<String> arguments) {
  String? nome;
  double peso = 0;
  double altura = 0;

  // Solicita ao usuário que digite seu nome
  stdout.write('Digite seu nome: ');

  // Lê a entrada do usuário como uma linha de texto
  nome = stdin.readLineSync();

  try {
    // Solicita ao usuário que digite seu peso
    stdout.write('Digite seu peso em kg: ');

    // Lê a entrada do usuário como uma linha de texto e a converte para um número inteiro
     peso = double.parse(stdin.readLineSync()!);

     // Solicita ao usuário que digite sua altura
    stdout.write('Digite seu altura em m: ');

    // Lê a entrada do usuário como uma linha de texto e a converte para um número inteiro
    altura = double.parse(stdin.readLineSync()!);
  } catch (e) {
    // Captura a exceção e a imprime
    print('Exceção capturada: $e');
  }

  // Instancia um objeto do tipo Pessoa de acordo com os dados que foram coletados
  Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

  // Exibe os dados inseridos pelo usuário
  pessoa.mostrarInfomacoes();
}
