import 'dart:io';

import 'package:http/http.dart';

void checkEmail(String email) {
  if (!email.contains('@')) {
    throw FormatException('Invalid email format');
  }
}

Map<String, dynamic> handleResponse(Response response) {
  if (response.statusCode == 200)
    return _getResponseData(response);
  throw HttpException('Request failed with status: ${response.statusCode}, body: ${response.body}');
}

Map<String, dynamic> _getResponseData(Response response) {
  return response.body.isEmpty? {'error': 'Incorrect data'} : {'userID': response.body};
}

String encodeQueryParameters(Map<String, String> params) {
  return params.entries.map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
}