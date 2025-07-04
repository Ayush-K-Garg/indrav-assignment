import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'agegroup_page.dart';
import 'auth_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signup', page: () => SignUpPage()),
        GetPage(name: '/age', page: () => AgeGroupPage()),
      ],
    );
  }
}
