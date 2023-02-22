String? buyMasterCard(double value, double limit) {
  if (value > limit) {
    return '\n[ERRO]: Você não tem limite suficiente';
  } else if (value < 0) {
    return '\n[ERRO]: Valor inserido é inválido';
  } else {
    return null;
  }
}
