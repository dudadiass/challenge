import 'package:bank/models/cards/card_model.dart';
import 'package:bank/models/cards/debit_card_model.dart';

import '../../models/accounts/deposit_account_model.dart';
import '../../models/user/user_model.dart';
import '../../repository/random.dart';
import '../card_inputs/debit_card_input.dart';

DepositAccountModel depositAccount(UserModel user) {
  late DebitCardModel card = debitCard(user);

  String accountNumber;
  String branch;
  String bank;

  accountNumber = generateRandomNumber(interactionsNumber: 7);
  branch = generateRandomNumber(interactionsNumber: 7);

  bank = "123";

  DepositAccountModel depositAccountModel = DepositAccountModel(
      branch: branch,
      bank: bank,
      accountNumber: accountNumber,
      balance: 0,
      user: user,
      card: card);
  return depositAccountModel;
}
