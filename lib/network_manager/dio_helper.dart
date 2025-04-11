import 'package:dio/dio.dart';

class DioHelper {
  // Created dio instance
  Dio dio = Dio();

// Created Options for Dio
  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: 'application/json',
    sendTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 30),
  );

  // Created Headers for request call
  Map<String,dynamic> headers = {"Authentication":"Bearer nb37bgh2378rbhvbds23vrl2f67gfwhe vwuy32r6yvu fewyud8f663y"};

}
