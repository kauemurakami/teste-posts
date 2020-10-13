import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:meta/meta.dart';
import 'package:teste_dart_digit_posts/app/data/model/user_model.dart';
import 'package:teste_dart_digit_posts/app/modules/auth/auth_service.dart';
import 'package:teste_dart_digit_posts/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final userRepository;
  LoginController({@required this.userRepository})
      : assert(userRepository != null);

  final _message = ''.obs;
  get message => this._message.value;
  set message(value) => this._message.value = value;

  final _obscure = true.obs;
  get obscure => this._obscure.value;
  set obscure(value) => this._obscure.value = value;

  final _isEmail = false.obs;
  get isEmail => this._isEmail.value;
  set isEmail(value) => this._isEmail.value = value;

  onChangedEmail(value) =>
      GetUtils.isEmail(value) ? this.isEmail = true : this.isEmail = false;
  onSavedEmail(value) => AuthService.user.email = value;
  emailValidate(value) => GetUtils.isEmail(value) ? null : 'Email inválido';

  onChangedSenha(value) => '';
  onSavedSenha(value) => AuthService.user.senha = value;
  senhaValidate(value) => value.length < 6 ? 'Senha inválida' : null;

  showPassword() =>
      this.obscure == false ? this.obscure = true : obscure = false;

  login() {
    //email e senha fictício
    User u = User();
    u.email = 'email@gmail.com';
    u.senha = '123456';
    //dados fictícios
    print(u.email);
    print(u.senha);
    //dados inseridos
    print(AuthService.user.email);
    print(AuthService.user.senha);

    if (u.email == AuthService.user.email &&
        u.senha == AuthService.user.senha) {
      Get.offAllNamed(Routes.HOME);
    } else
      this.loginErro();
  }

  loginErro() =>
      this.message = 'Ops, algo deu errado, confira seu email e/ou senha';
}
