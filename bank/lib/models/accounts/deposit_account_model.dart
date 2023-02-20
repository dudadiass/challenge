import 'package:bank/models/cards/debit_card_model.dart';

import 'account_model.dart';

class DepositAccountModel extends AccountModel {
  DebitCardModel debitCardModel;
  DepositAccountModel({
    required this.debitCardModel,
    required super.branch,
    required super.bank,
    required super.accountNumber,
    required super.balance,
    required super.user,
  });
}
