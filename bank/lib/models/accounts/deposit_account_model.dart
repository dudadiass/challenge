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

  void render(int value) {
    final days = value;
    final daysHalf = value / 2;
    final daysDouble = value * 2;
    final timeHalf = (value * 0.01) * balance;
    final time = (value * 0.02) * balance;
    final timeDouble = (value * 0.04) * balance;
    print('Em $days dias seu dinheiro pode render: $time');
    print('Em $daysHalf dias seu dinheiro pode render: $timeHalf');
    print('Em $daysDouble dias seu dinheiro pode render: $timeDouble');
  }
}
