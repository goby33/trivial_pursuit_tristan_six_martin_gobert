import 'package:dio/dio.dart';

class DioClient {
// dio instance
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.connectTimeout = 15000
      ..options.receiveTimeout = 15000
      ..options.responseType = ResponseType.json;
  }
}
