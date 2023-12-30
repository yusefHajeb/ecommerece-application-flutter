import 'package:get/get.dart';

validInput(String val, {int max = 1, required String type, int min = 0}) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'not valid username';
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      print('no email');
      return "not valid email";
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  if (val.isEmpty) {
    return " can't be empty";
  }

  if (val.length < min && min != 0) {
    return " can't be less than $min";
  }

  if (val.length < min && max != 1) {
    return " can't be larger than $max";
  }
}
