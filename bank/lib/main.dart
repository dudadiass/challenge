import 'package:bank/inputs/account_input/which_account_input.dart';
import 'package:bank/messages/input_message.dart';

import 'inputs/user_inputs/user_inputs.dart';

import 'models/user/user_model.dart';

void main(List<String> args) {
  Message.welcome();
  UserModel user = userCreate();
  whichAccount(user);
}
