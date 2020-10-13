import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_dart_digit_posts/app/theme/app_colors.dart';
import 'package:teste_dart_digit_posts/app/theme/app_text_theme.dart';

class CustomCardWidget extends Container {
  final String name;
  final String description;
  final String url;

  CustomCardWidget({
    @required this.name,
    @required this.description,
    @required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0))),
      margin: EdgeInsets.only(top: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: mainColor),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0))),
        width: Get.width,
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            this.name ?? '',
            style: repoName,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(this.description ?? ''),
          ),
          Text(
            this.url ?? '',
            style: linkText,
          ),
        ]),
      ),
    );
  }
}
