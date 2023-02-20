import 'package:bank/models/cards/debit_card_model.dart';
import '../../models/accounts/deposit_account_model.dart';
import '../../models/user/user_model.dart';
import '../random.dart';
import '../card_repository/debit_card_repository.dart';

DepositAccountModel depositAccount(UserModel user) {
  DebitCardModel cardDebit = debitCard(user);

  String accountNumber;
  String branch;
  String bank;

  accountNumber = generateNumbers(7);
  branch = generateNumbers(7);

  bank = "123";

  DepositAccountModel depositAccountModel = DepositAccountModel(
    branch: branch,
    bank: bank,
    accountNumber: accountNumber,
    balance: 0,
    user: user,
    debitCard: cardDebit,
  );
  return depositAccountModel;
}
