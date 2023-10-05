double calculaIMC({required double? peso, required double? altura}) {
  double resultado = peso! / (altura! * altura);
  String resultadoFormatado = resultado.toStringAsFixed(1);
  return double.parse(resultadoFormatado);
}

String classificaIMC({required double imc}){
  if (imc < 18.5) {
    return 'Abaixo do peso';
  } else if (imc >= 18.5 && imc < 24.9) {
    return 'Peso normal';
  } else if (imc >= 24.9 && imc < 29.9) {
    return 'Sobrepeso';
  } else if (imc >= 30.0 && imc < 34.9) {
    return 'Obesidade grau I';
  } else if (imc >= 35.0 && imc < 39.9) {
    return 'Obesidade grau II';
  } else {
    return 'Obesidade grau III';
  }
}
