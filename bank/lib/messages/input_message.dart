class Message {
  static void createDebitCard() {
    print('\nCartão de débito criado com sucesso!\n');
  }

  static void createAccount() {
    print('\nConta criada com sucesso!');
  }

  static void createUser() {
    print('\nUsuário criado com sucesso!\n');
  }

  static void failCreateCrediCard() {
    print(
        '\nSolicitação negada: Infelizmente não foi possível criar seu cartão de crédito\n');
  }

  static void sucessCreateCreditCard() {
    print('\nSolicitação aprovada: Seu cartão de crédito foi criado\n');
  }

  static void invalidOption() {
    print('\nOpção Incorreta\n');
  }

  static void welcome() {
    print("Bem-vindo(a) ao Banco do Brasel!");
  }

  static void invalidPassword() {
    print("\nSenha inválida. Operação cancelada\n");
  }

  static void sucessDeposit() {
    print('\nDepósito realizado com sucesso\n');
  }

  static void sucessWithdraw() {
    print('\nSaque realizado com sucesso\n');
  }

  static void operationFailed() {
    print('\nOperação cancelada\n');
  }

  static void sucessCreditPayment() {
    print('\nPagamento com crédito realizado com sucesso\n');
  }

  static void sucessDebitPayment() {
    print('\nPagamento com débito realizado com sucesso\n');
  }

  static void sucessTakeLoan() {
    print('\nEmpréstimo aprovado\n');
  }
}
