import 'package:bank/inputs/account/which_account_input.dart';

import 'inputs/user/user_inputs.dart';
import 'models/user/user_model.dart';

void main(List<String> args) {
  print("Bem-vindo(a) ao Banco do Brasel!");
  UserModel user = userCreate();

  whichAccount(user: user);
}
