String? valueWithdraw(double value, double balance) {
  if (value > balance) {
    return '[ERRO]: Valor não pode ser maior que o seu saldo';
  }
  return null;
}
