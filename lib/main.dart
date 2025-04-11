import 'package:flutter/material.dart';

import 'network_manager/repository.dart';

void main() {
  final reqBody = {"email": "eve.holt@reqres.in", "password": "cityslicka"};

  Repository().postApi(reqBody);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
