import 'package:dio/dio.dart';
import 'package:flutter_dio_example/network_manager/ingection_container.dart';

class DioHelper {
  // Created dio instance
  Dio dio = getDio();

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

  // Create a method for post api call  with parameters like url and bool value to add token and requestBody
  Future<dynamic> post({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    //  isAuthRequired == true
    if (isAuthRequired) {
      // we are adding headers with token
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        // here we are calling the api with no request body
        response = await dio.post(url, options: options);
      } else {
        // here we are calling the api with request body
        response = await dio.post(url, options: options, data: requestBody);
      }

      return response.data;
    } catch (error) {
      // here we are catching the error
      return null;
    }
  }
  // Create a method for put api call  with parameters like url and bool value to add token and requestBody
  Future<dynamic> put({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    //  isAuthRequired == true
    if (isAuthRequired) {
      // we are adding headers with token
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        // here we are calling the api with no request body
        response = await dio.put(url, options: options);
      } else {
        // here we are calling the api with request body
        response = await dio.put(url, options: options, data: requestBody);
      }

      return response.data;
    } catch (error) {
      // here we are catching the error
      return null;
    }
  }

  // Create a method for patch api call  with parameters like url and bool value to add token and requestBody
  Future<dynamic> patch({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    //  isAuthRequired == true
    if (isAuthRequired) {
      // we are adding headers with token
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        // here we are calling the api with no request body
        response = await dio.patch(url, options: options);
      } else {
        // here we are calling the api with request body
        response = await dio.patch(url, options: options, data: requestBody);
      }

      return response.data;
    } catch (error) {
      // here we are catching the error
      return null;
    }
  }
  // Create a method for delete api call  with parameters like url and bool value to add token and requestBody
  Future<dynamic> delete({
    required String url,
    Object? requestBody,
    bool isAuthRequired = false,
  }) async {
    //  isAuthRequired == true
    if (isAuthRequired) {
      // we are adding headers with token
      options.headers = headers;
    }
    try {
      Response response;
      if (requestBody == null) {
        // here we are calling the api with no request body
        response = await dio.delete(url, options: options);
      } else {
        // here we are calling the api with request body
        response = await dio.delete(url, options: options, data: requestBody);
      }

      return response.data;
    } catch (error) {
      // here we are catching the error
      return null;
    }
  }
}
