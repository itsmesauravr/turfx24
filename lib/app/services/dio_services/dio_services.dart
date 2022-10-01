import 'package:dio/dio.dart';

class DioServices {
  static Future<dynamic> postMethod({
    required String url,
    required value,
  }) async =>
      await Dio().post(url, data: value).then((value) => value);
}
