import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:test/test.dart';

void main() {
  test('calculaIMC para pessoa com 70kg e 1.70m', () {
    expect(calculaIMC(peso: 70, altura: 1.7), 24.2);
  });
}
