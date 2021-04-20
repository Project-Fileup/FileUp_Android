import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:file_up/model/base_url.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: base_url,
    connectTimeout: 30 * 1000,
    receiveTimeout: 30 * 1000,
  ),
);

postSignIn(String email, String password) async {
  print('singIN');
  String url = '/users/signIn';

  print('$url - email : $email, password : $password');

  try {
    Response response = await dio.post(
      url,
      data: {
        'email': email,
        'password': password,
      },
    );

    return response.data;
  } on DioError catch (e) {
    return e.response.data;
  }
}
