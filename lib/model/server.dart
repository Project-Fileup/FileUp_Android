import 'package:dio/dio.dart';
import 'package:file_up/model/base_url.dart';

void signIn(String email, String password) async {
  print('singIN');
  String url = base_url + '/users/signIn';

  print(url);

  Response response = await Dio().post(
    url,
    data: {
      'email': email,
      'password': password,
    },
  );

  print(response.data);
}
