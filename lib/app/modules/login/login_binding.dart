import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:teste_dart_digit_posts/app/data/provider/app_api.dart';
import 'package:teste_dart_digit_posts/app/data/repository/user_repository.dart';
import 'package:teste_dart_digit_posts/app/modules/auth/auth_service.dart';
import 'package:teste_dart_digit_posts/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(
        userRepository:
            UserRepository(apiClient: MyProvider(httpClient: http.Client()))));
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
