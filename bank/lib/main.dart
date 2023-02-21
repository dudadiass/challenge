import 'package:bank/inputs/account_input/which_account_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/current_account_model.dart';

import 'package:bank/models/accounts/deposit_account_model.dart';
import 'package:bank/repositories/account_repository/current_accout_repository.dart';
import 'package:bank/repositories/account_repository/deposit_account_repository.dart';

import 'inputs/user_inputs/user_inputs.dart';

import 'models/user/user_model.dart';

void main(List<String> args) {
  Message.welcome();
  UserModel user = userCreate();
  DepositAccountModel depositAccount = depositAccountCreate(user);
  CurrentAccountModel currentAccount = currentAccountCreate(user);
  whichAccount(user, depositAccount, currentAccount);
}
