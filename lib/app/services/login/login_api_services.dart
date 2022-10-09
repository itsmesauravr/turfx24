import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:turfx24/app/model/login/login_model.dart';
import 'package:turfx24/app/services/dio_services/dio_services.dart';
import 'package:turfx24/app/utilities/url/url.dart';

Future<void> loginApi(LoginModel userData) async {
  try {
    Response loginPostResponse = await DioOperations.postMethod(
        url: Url.baseUrl + Url.logIn, data: userData);
    log(loginPostResponse.data.toString());
  } on DioError catch (e) {
    if (e.response!.statusCode == 401) {
      log("message :$e");
    }
  }
}
