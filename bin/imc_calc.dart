import 'package:imc_calc/Classes/Pessoa.dart';
import 'package:imc_calc/imc_calc.dart';
import 'package:imc_calc/utils.dart';

void main(List<String> arguments) {
  List<Pessoa> pessoas = [];

  do {
    Pessoa pessoa = Pessoa(Utils.lerConsole("Informe o nome da pessoa"));

    pessoa.setAltura(Utils.lerConsoleNumerico("Informe a altura").toDouble());
    pessoa.setPeso(Utils.lerConsoleNumerico("Informe o peso").toDouble());

    double imc = calcularImc(pessoa.getPeso(), pessoa.getAltura());

    pessoa.setImc(imc, retornarClassificacao(imc));

    pessoas.add(pessoa);
  } while (Utils.lerConsole(
          "Escolha uma opção \n 1- Informar mais uma pessoa \n 2- Exibir a lista de pessoas adicionadas e seus imcs") ==
      "1");

  for (var i = 0; i < pessoas.length; i++) {
    print("${i + 1} - ${pessoas[i].toString()}");
  }
}
