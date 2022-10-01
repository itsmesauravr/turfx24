import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:turfx24/app/model/login/login_model.dart';
import 'package:turfx24/app/services/dio_services/dio_services.dart';
import 'package:turfx24/app/utilities/url/url.dart';

class LogInDioServices {
  dynamic logInApi(LogInModel userVariables) async {
    try {
      Response response = await DioServices.postMethod(
        url: Url.baseUrl + Url.logIn,
        value: userVariables.toJson(),
      );

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        LogInResponse newData = LogInResponse.fromJson(response.data);
        return newData;
      }
    } on DioError catch (e) {
      if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 500) {
        log(e.response!.data);
      }
    }
  }
}
