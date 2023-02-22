String? buyDebitCard(double value, double balance) {
  if (balance == 0) {
    return '\n[ERRO]: Seu saldo é insuficiente';
  } else if (value > balance) {
    return '\n[ERRO]: Valor inserido é maior que seu saldo';
  } else {
    return null;
  }
}
