import 'package:bank/models/cards/debit_card_model.dart';
import 'package:bank/repositories/card_repository/credit_card_repository.dart';
import 'package:bank/models/cards/credit_card_model.dart';
import 'package:bank/repositories/card_repository/debit_card_repository.dart';
import 'package:bank/repositories/generate.dart';

import '../../models/accounts/current_account_model.dart';
import '../../models/user/user_model.dart';

CurrentAccountModel currentAccountCreate(UserModel user) {
  late DebitCardModel cardDebit = debitCardCreate(user);
  late CreditCardModel cardCredit = creditCardCreate(user);

  String accountNumber;
  String branch;
  String bank;

  accountNumber = generateRandomNumbers(7);
  branch = generateRandomNumbers(7);

  bank = "123";

  CurrentAccountModel currentAccount = CurrentAccountModel(
    branch: branch,
    bank: bank,
    accountNumber: accountNumber,
    balance: 0,
    user: user,
    creditCard: cardCredit,
    debitCard: cardDebit,
  );
  return currentAccount;
}
