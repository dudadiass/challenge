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
    final halfDays = days / 2;
    final doubleDays = days * 2;
    final totalDayRender = balance * 0.02;
    final totalInDays = totalDayRender * days;
    final totalInHalfDays = totalDayRender * halfDays;
    final totalInDoubleDays = totalDayRender * doubleDays;
    print('Em $days dias seu dinheiro renderá: $totalInDays');
    print('Em $halfDays dias seu dinheiro renderá: $totalInHalfDays');
    print('Em $doubleDays dias seu dinheiro renderá: $totalInDoubleDays');
  }
}
