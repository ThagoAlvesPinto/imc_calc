import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerConsole(String? mensagem) {
    if (mensagem != null) {
      print(mensagem);
    }

    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static num lerConsoleNumerico(String? mensagem) {
    try {
      return num.parse(lerConsole(mensagem).replaceAll(",", "."));
    } catch (e) {
      return lerConsoleNumerico(
          "Valor informado deve ser numérico, favor informe novamente");
    }
  }
}
