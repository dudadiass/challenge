String? valueWithdraw(double value, double balance) {
  if (balance == 0) {
    return '\n[ERRO]: Seu saldo é insuficiente';
  } else if (value > balance) {
    return '\n[ERRO]: Valor não pode ser maior que o seu saldo';
  } else {
    return null;
  }
}
