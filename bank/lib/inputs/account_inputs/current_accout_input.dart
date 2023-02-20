import 'package:bank/inputs/card_inputs/credit_card_input.dart';
import 'package:bank/inputs/card_inputs/debit_card_input.dart';
import 'package:bank/models/cards/card_model.dart';
import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/repository/random.dart';

import '../../models/accounts/current_account_model.dart';
import '../../models/user/user_model.dart';

CurrentAccountModel currentAccount(UserModel user) {
  late CreditCardModel card = creditCard(user);

  String accountNumber;
  String branch;
  String bank;

  accountNumber = generateRandomNumber(interactionsNumber: 7);
  branch = generateRandomNumber(interactionsNumber: 7);

  bank = "123";

  CurrentAccountModel currentAccountModel = CurrentAccountModel(
    branch: branch,
    bank: bank,
    accountNumber: accountNumber,
    balance: 0,
    user: user,
    card: card,
  );
  return currentAccountModel;
}
