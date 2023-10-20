class Pessoa {
  final String _nome;
  double? _peso;
  double? _altura;
  double? _imc;
  String? _classificacaoImc;

  Pessoa(this._nome);

  setPeso(double peso) {
    _peso = peso;
  }

  setAltura(double altura) {
    _altura = altura;
  }

  setImc(double imc, String classificacao) {
    _imc = imc;
    _classificacaoImc = classificacao;
  }

  double getPeso() {
    return _peso ?? 0;
  }

  double getAltura() {
    return _altura ?? 0;
  }

  (double valor, String classificacao) getImc() {
    return (_imc ?? 0, _classificacaoImc ?? "");
  }

  String getNome() {
    return _nome;
  }

  @override
  String toString() {
    return 'Nome: $_nome, Peso: $_peso, Altura: $_altura, IMC: $_imc, Classificação IMC: $_classificacaoImc';
  }
}
