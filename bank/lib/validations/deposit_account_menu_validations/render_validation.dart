String? calcRenderValidation(int days, double balance) {
  if (balance <= 0) {
    return '\n[ERRO]: Para calcular o rendimento é necessário ter dinheiro na conta';
  } else if (days > 366) {
    return '\n[ERRO]: dias inválidos';
  } else {
    return null;
  }
}
