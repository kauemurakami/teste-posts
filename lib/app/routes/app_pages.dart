import 'package:get/get.dart';
import 'package:teste_dart_digit_posts/app/modules/home/home_bindings.dart';
import 'package:teste_dart_digit_posts/app/modules/home/home_page.dart';
import 'package:teste_dart_digit_posts/app/modules/login/login_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
  ];
}
