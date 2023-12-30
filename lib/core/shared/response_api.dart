import 'dart:convert';

class ResponseData {
  static int success = 200;
  static dynamic data(dynamic data) {
    dynamic response = data["data"];
    return json.decode(response);
  }

  static dynamic statusMessage(dynamic message) {
    return json.decode(message['message']);
  }
}
