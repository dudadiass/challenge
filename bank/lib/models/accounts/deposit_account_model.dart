import 'account_model.dart';

class DepositAccountModel extends AccountModel {
  DepositAccountModel({
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
    required super.debitCard,
  });

  void render(int days) {
    final daysHalf = days / 2;
    final daysDouble = days * 2;
    final timeHalf = (days * 0.01) * balance;
    final time = (days * 0.02) * balance;
    final timeDouble = (days * 0.04) * balance;
    print('Em $days dias seu dinheiro pode render: $time');
    print('Em $daysHalf dias seu dinheiro pode render: $timeHalf');
    print('Em $daysDouble dias seu dinheiro pode render: $timeDouble');
  }

  @override
  String toString() {
    return 'Nome do titular: ${user.name} \nAgência: $branch \nBanco: $bank \nNúmero da conta: $accountNumber \nSaldo: $balance';
  }
}
