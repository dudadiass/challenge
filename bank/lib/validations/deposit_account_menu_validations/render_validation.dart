String? calcRenderValidation(int days, double balance) {
  if (balance <= 0) {
    return 'Para calcular o rendimento é necessário ter dinheiro na conta';
  } else if (days > 366) {
    return 'dias inválidos';
  } else {
    return null;
  }
}
