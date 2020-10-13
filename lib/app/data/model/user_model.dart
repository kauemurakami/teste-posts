import 'package:get/get.dart';

class RxUser {
  final email = ''.obs;
  final senha = ''.obs;
}

class User {
  User({email, senha});
  final rx = RxUser();

  get senha => this.rx.senha.value;
  set senha(value) => this.rx.senha.value = value;

  get email => this.rx.email.value;
  set email(value) => this.rx.email.value = value;
}
