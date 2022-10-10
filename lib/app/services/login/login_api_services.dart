import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:turfx24/app/model/login/login_model.dart';
import 'package:turfx24/app/services/dio_services/dio_services.dart';
import 'package:turfx24/app/utilities/url/url.dart';

Future<LoginResponse?> loginApi(LoginModel userData) async {
  try {
    Response loginPostResponse = await DioOperations.postMethod(
        url: Url.baseUrl + Url.logIn, data: userData);
    log(loginPostResponse.data.toString());
    if (loginPostResponse.statusCode! >= 200 &&
        loginPostResponse.statusCode! <= 299) {
      LoginResponse successLoginResponse =
          LoginResponse.fromJson(loginPostResponse.data);
      return successLoginResponse;
    }
  } on DioError catch (e) {
    if (e.response!.statusCode! >= 401 && e.response!.statusCode! <= 499) {
      log("Login error message :${e.message}");
      return LoginResponse.fromJson(e.response!.data);
    }
  } catch (e) {
    log("Error message : $e");
  }
  return null;
}
