import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digit_posts/app/modules/login/login_controller.dart';
import 'package:teste_dart_digit_posts/app/theme/app_text_theme.dart';
import 'package:teste_dart_digit_posts/app/widgets/custom_button.dart';
import 'package:teste_dart_digit_posts/app/widgets/custom_tff.dart';

class LoginPage extends GetView<LoginController> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login',
                  style: title,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Faça o login abaixo',
                    style: subtitulo,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Obx(() => Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CustomTextFormField(
                            type: TextInputType.emailAddress,
                            text: 'Email',
                            onChanged: (value) =>
                                controller.onChangedEmail(value),
                            onSaved: (value) => controller.onSavedEmail(value),
                            validator: (value) =>
                                controller.emailValidate(value),
                            action: TextInputAction.next,
                            sufixIcon: Icon(
                              Icons.check_circle,
                              color: controller.isEmail
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CustomTextFormField(
                            obscure: controller.obscure,
                            type: TextInputType.text,
                            text: 'Senha',
                            onChanged: (value) =>
                                controller.onChangedSenha(value),
                            onSaved: (value) => controller.onSavedSenha(value),
                            validator: (value) =>
                                controller.senhaValidate(value),
                            action: TextInputAction.next,
                            sufixIcon: GestureDetector(
                              onLongPress: () => controller.showPassword(),
                              onLongPressEnd: (details) =>
                                  controller.showPassword(),
                              child: Icon(
                                Icons.remove_red_eye,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: CustomButtonWidget(
                                text: 'Entrar',
                                callback: () {
                                  final FormState form = formKey.currentState;
                                  if (form.validate()) {
                                    form.save();
                                    controller.login();
                                  }
                                }),
                          ),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Obx(() => Text(
                        controller.message,
                        style: errorMessage,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
