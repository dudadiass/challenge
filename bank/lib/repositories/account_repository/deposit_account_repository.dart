import 'package:bank/models/cards/debit_card_model.dart';
import '../../models/accounts/deposit_account_model.dart';
import '../../models/user/user_model.dart';
import '../generate.dart';
import '../card_repository/debit_card_repository.dart';

DepositAccountModel depositAccountCreate(UserModel user) {
  DebitCardModel cardDebit = debitCardCreate(user);

  String accountNumber;
  String branch;
  String bank;

  accountNumber = generateRandomNumbers(7);
  branch = generateRandomNumbers(7);

  bank = "123";

  DepositAccountModel depositAccount = DepositAccountModel(
    branch: branch,
    bank: bank,
    accountNumber: accountNumber,
    user: user,
    debitCard: cardDebit,
  );
  return depositAccount;
}
