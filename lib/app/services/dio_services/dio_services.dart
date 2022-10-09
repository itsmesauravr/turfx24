import 'package:dio/dio.dart';

class DioOperations {
  static Future<dynamic> postMethod({required url, required data}) async {
    return await Dio().post(url, data: data).then((value) => value);
  }
}
