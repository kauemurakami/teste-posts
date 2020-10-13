import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: Get.height / 2),
        child: Column(
          children: [
            Center(child: CircularProgressIndicator()),
          ],
        ));
  }
}
