import 'dart:math';
import '../../models/accounts/deposit_account_model.dart';
import '../../models/user/user_model.dart';

DepositAccountModel depositAccount({required UserModel user}) {
  var rnd = Random();
  dynamic accountNumber;
  dynamic branch;
  dynamic bank;

  accountNumber = "${rnd.nextInt(100000)}";
  branch = "${rnd.nextInt(100000)}";

  bank = "123";

  DepositAccountModel depositAccountModel = DepositAccountModel(
      branch: branch,
      bank: bank,
      accountNumber: accountNumber,
      balance: 0,
      user: user);
  return depositAccountModel;
}
