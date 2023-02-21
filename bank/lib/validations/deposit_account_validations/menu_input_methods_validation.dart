import '../../../messages/input_message.dart';

double? valueBalanceValidation(double value) {
  if (value > 5000) {
    Message.depositValueBigger();
    return 0;
  } else if (value <= 0) {
    Message.depositValueLess();
  }
  return null;
}
