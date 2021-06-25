import 'package:dio/dio.dart';
import 'package:file_up/model/base_url.dart';
import 'package:file_up/pages/sign_up_page/vertify_widget.dart';

Dio dio = Dio(
  BaseOptions(
    baseUrl: base_url,
    connectTimeout: 30 * 1000,
    receiveTimeout: 30 * 1000,
  ),
);

postSignIn(String email, String password) async {
  String url = '/users/signIn';

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

postSendEmail(String email) async {
  String url = '/users/sendEmail';

  try {
    Response response = await dio.post(
      url,
      data: {
        'email': email,
      },
    );

    return response.data;
  } on DioError catch (e) {
    return e.response.data;
  }
}

postSignUp(
    String email, String password, String certifyCode, String nickName) async {
  String url = '/users/signUp';

  try {
    Response response = await dio.post(
      url,
      data: {
        'email': email,
        'password': password,
        'certifyCode': certifyCode,
        'nickname': nickName,
      },
    );

    return response.data;
  } on DioError catch (e) {
    return e.response.data;
  }
}
