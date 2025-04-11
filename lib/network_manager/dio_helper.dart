import 'package:dio/dio.dart';

class DioHelper {
  Dio dio = Dio();

  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: 'application/json',
    sendTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 30),
  );

}
