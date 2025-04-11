import 'package:flutter_dio_example/network_manager/dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper = DioHelper();

  Future<dynamic> getApi(Object reqModel) async {
    var response = await _dioHelper.get(url: "https://reqres.in/api/login");
    return response;
  }

  Future<dynamic> postApi(Object reqModel) async {
    var response = await _dioHelper.post(
      url: "https://reqres.in/api/login",
      requestBody: reqModel,
    );
    return response;
  }

  Future<dynamic> patchApi(Object reqModel) async {
    var response = await _dioHelper.patch(
      url: "https://reqres.in/api/login",
      requestBody: reqModel,
    );
    return response;
  }

  Future<dynamic> putApi(Object reqModel) async {
    var response = await _dioHelper.put(
      url: "https://reqres.in/api/login",
      requestBody: reqModel,
    );
    return response;
  }

  Future<dynamic> deleteApi(Object reqModel) async {
    var response = await _dioHelper.delete(
      url: "https://reqres.in/api/login",
      requestBody: reqModel,
    );
    return response;
  }
}
