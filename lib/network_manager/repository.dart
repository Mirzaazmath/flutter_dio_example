import 'package:flutter_dio_example/network_manager/dio_helper.dart';

class Repository {

  static final DioHelper _dioHelper = DioHelper();
  Future<dynamic>postApi(Object reqModel)async{
    var response = await _dioHelper.post(url: "https://reqres.in/api/login",requestBody: reqModel);
  }

}