import 'dart:io';

import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:calculadoraimc/pessoa.dart';

void main(List<String> arguments) {
  String? nome;
  double peso = 0;
  double altura = 0;
  double imc = 0;
  String classificacao;

  nome = solicitaDadoDoUsuario(mensagem: 'Digite seu nome: ');

  try {
     peso = double.parse(solicitaDadoDoUsuario(mensagem: 'Digite seu peso em kg: ')!);
  } catch (e) {
    // Captura a exceção e a imprime
    print('Exceção capturada: $e');
  }

  try {
    altura = double.parse(solicitaDadoDoUsuario(mensagem: 'Digite seu altura em m: ')!);
  } catch (e) {
    // Captura a exceção e a imprime
    print('Exceção capturada: $e');
  }

  // Instancia um objeto do tipo Pessoa de acordo com os dados que foram coletados
  Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
  imc = calculaIMC(peso: pessoa.peso, altura: pessoa.altura);
  classificacao = classificaIMC(imc: imc);

  // Exibe os dados inseridos pelo usuário
  pessoa.mostrarInfomacoes();
  print('IMC: $imc');
  print('Classificacao: $classificacao');
}

String? solicitaDadoDoUsuario({String? mensagem}){
  String? informacao;

  stdout.write('$mensagem');
  informacao = stdin.readLineSync();

  return informacao;
}