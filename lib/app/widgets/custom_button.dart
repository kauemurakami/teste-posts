import 'package:flutter/material.dart';
import 'package:teste_dart_digit_posts/app/theme/app_colors.dart';

class CustomButtonWidget extends Container {
  final String text;
  final VoidCallback callback;
  CustomButtonWidget({
    @required this.text,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 0.5,
      height: 50,
      child: RaisedButton(
          autofocus: false,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: this.callback,
          child: Text(
            this.text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          color: mainColor),
    );
  }
}
