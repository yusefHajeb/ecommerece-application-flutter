import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
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

  if (val.length < min) {
    return " can't be less than $min";
  }

  if (val.length < min) {
    return " can't be larger than $max";
  }
}
