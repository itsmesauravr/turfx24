import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:turfx24/app/model/signup/signup_model.dart';
import 'package:turfx24/app/services/dio_services/dio_services.dart';
import 'package:turfx24/app/utilities/url/url.dart';

Future<SignUpReturnResponse?> signUpApi(SignUpModel userData) async {
  try {
    Response signUpPostResponse = await DioOperations.postMethod(
      url: Url.baseUrl + Url.signUp,
      data: userData,
    );
    if (signUpPostResponse.statusCode! >= 200 &&
        signUpPostResponse.statusCode! <= 299) {
      SignUpReturnResponse successResponse =
          SignUpReturnResponse.fromJson(signUpPostResponse.data);
      return successResponse;
    }
  } on DioError catch (e) {
    if (e.response!.statusCode! >= 400 && e.response!.statusCode! <= 499) {
      return SignUpReturnResponse.fromJson(e.response!.data);
    }
  } catch (e) {
    log("Error message $e");
  }
  return null;
}
