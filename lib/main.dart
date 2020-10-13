import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digit_posts/app/modules/login/login_binding.dart';
import 'package:teste_dart_digit_posts/app/modules/login/login_page.dart';
import 'package:teste_dart_digit_posts/app/routes/app_pages.dart';
import 'package:teste_dart_digit_posts/app/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    initialBinding: LoginBinding(),
    home: LoginPage(),
    getPages: AppPages.pages,
    theme: appThemeData,
  ));
}
