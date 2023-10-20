import 'dart:math';

double calcularImc(double peso, double altura) {
  return peso / pow(altura, 2);
}

String retornarClassificacao(double imc) {
  switch (imc) {
    case < 16:
      return "Magreza grave";
    case < 17:
      return "Magreza moderada";
    case < 18.5:
      return "Magreza leve";
    case < 25:
      return "Saudável";
    case < 30:
      return "Sobrepeso";
    case < 35:
      return "Obesidade Grau I";
    case < 40:
      return "Obesidade Grau II (severa)";
    default:
      return "Obesidade Grau III (mórbida)";
  }
}
