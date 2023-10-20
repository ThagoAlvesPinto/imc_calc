import 'package:imc_calc/imc_calc.dart';
import 'package:test/test.dart';

void main() {
  test('calcular imc', () {
    expect(calcularImc(100, 1.80), 30.864197530864196);
  });

  test('obter classificação imc', () {
    expect(retornarClassificacao(25), "Sobrepeso");
  });
}
