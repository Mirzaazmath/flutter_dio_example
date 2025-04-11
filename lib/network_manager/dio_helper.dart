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
  Map<String, dynamic> headers = {
    "Authentication":
        "Bearer nb37bgh2378rbhvbds23vrl2f67gfwhe vwuy32r6yvu fewyud8f663y",
  };

  // Create a method for get api call  with parameters like url and bool value to add token
  Future<dynamic> get({
    required String url,
    bool isAuthRequired = false,
  }) async {
    //  isAuthRequired == true
    if (isAuthRequired) {
      // we are adding headers with token
      options.headers = headers;
    }
    try {
      // here we are calling the api
      Response response = await dio.get(url, options: options);
      return response.data;
    } catch (error) {
      // here we are catching the error
      return null;
    }
  }
}
