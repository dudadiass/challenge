import 'package:bank/inputs/account_input/which_account_input.dart';
import 'package:bank/inputs/menu_input/deposit_account_menu_input.dart';
import 'package:bank/messages/input_message.dart';
import 'package:bank/models/accounts/account_model.dart';
import 'package:bank/repositories/account_repository/deposit_account_repository.dart';

import 'inputs/user_inputs/user_inputs.dart';

import 'models/user/user_model.dart';

void main(List<String> args) {
  Message.welcome();
  UserModel user = userCreate();
  whichAccount(user);
  AccountModel account = depositAccount(user);

  menuDepositAccount(user, account);
}
