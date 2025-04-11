import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dio_example/utils/print_value.dart';

Dio getDio() {
  // here we have created Dio instance;
  Dio dio = Dio();

  // here we are added interceptors in our dio
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        printValue(tag: "API URL :", '${options.uri}');
        printValue(tag: "HEADERS :", '${options.headers}');
        printValue(tag: "REQUEST BODY :", jsonEncode(options.data));
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        printValue(tag: "API RESPONSE :", response.data);
        printValue(tag: "STATUS CODE  :", '${response.statusCode ?? 0}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        printValue(tag: "STATUS CODE  :", '${e.response?.statusCode ?? 0}');
        printValue(tag: "ERROR DATA  :", '${e.response?.data ?? ""}');
        printValue(tag: "ERROR MESSAGE  :", '${e.message}');
        return handler.next(e);
      },
    ),
  );
  return dio;
}
