import 'dart:io';

import 'package:http/http.dart';

import 'package:designspiration/api/ApiUrls.dart';
import 'Common.dart';

class Register {
  static final _url = ApiUrls.getUrl(ApiUrls.REGISTER);
  String _nickname;
  String _email;
  String _password;

  Register(this._nickname, this._email, this._password);

  Future<Map<String, dynamic>> register() async {
    try {
      checkEmail(_email);
      return await _sendRequest();
    }
    on FormatException catch (e) {
      return {'error': e.message};
    }
    on HttpException catch (e) {
      return {'error': e.message};
    }
    catch (e) {
      return {'error': 'An unknown error occurred: $e'};
    }
  }

  Future<Map<String, dynamic>> _sendRequest() async {
    var requestBody = {
      'nickname': _nickname,
      'email': _email,
      'password': _password,
    };
    return await _buildRequest(requestBody);
  }

  Future<Map<String, dynamic>> _buildRequest(Map<String, String> requestBody) async {
    var urlWithParams = Uri.parse('$_url?${encodeQueryParameters(requestBody)}');
    var response = await post(urlWithParams, headers: {
      'Content-Type': 'application/json',
    });
    return handleResponse(response);
  }
}