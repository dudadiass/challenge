import 'dart:io';

import 'package:bank/models/user/user_model.dart';

bool passwordValidation(UserModel user) {
  print('Informe sua senha numérica de 8 dígitos: ');
  String senha = stdin.readLineSync()!;
  if (senha == user.password) {
    return true;
  } else {
    return false;
  }
}
