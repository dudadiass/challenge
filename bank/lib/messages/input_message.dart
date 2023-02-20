class Message {
  static void createDebitCard() {
    print('Cartão de débito criado com sucesso!');
  }

  static void createAccount() {
    print('Conta criada com sucesso!');
  }

  static void createUser() {
    print('Usuário criado com sucesso!');
  }

  static void failCreateCrediCard() {
    print(
        'Solicitação negada: Infelizmente não foi possível criar seu cartão de crédito');
  }

  static void sucessCreateCreditCard() {
    print('Solicitação aprovada: Seu cartão de crédito foi criado');
  }

  static void invalidOption() {
    print('Opção Incorreta');
  }

  static void welcome() {
    print("Bem-vindo(a) ao Banco do Brasel!");
  }
}
