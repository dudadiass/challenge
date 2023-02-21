import 'dart:io';

import 'package:bank/models/user/user_model.dart';

passwordValidation(UserModel user) {
  print('Insira sua senha numérica');
  String senha = stdin.readLineSync()!;
  if (senha == user.password) {
    return true;
  } else {
    return false;
  }
}
