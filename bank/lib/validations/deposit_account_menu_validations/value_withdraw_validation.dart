String? valueWithdraw(double value, double balance) {
  if (value > balance) {
    return 'Valor do saque não pode ser maior que o seu saldo. Operação cancelada';
  }
  return null;
}
