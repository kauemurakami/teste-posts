// To parse this JSON data, do
//
//     final appError = appErrorFromJson(jsonString);

import 'dart:convert';

AppError appErrorFromJson(String str) => AppError.fromJson(json.decode(str));

String appErrorToJson(AppError data) => json.encode(data.toJson());

class AppError {
  AppError({
    this.message,
    this.documentationUrl,
  });

  String message;
  String documentationUrl;

  factory AppError.fromJson(Map<String, dynamic> json) => AppError(
        message: json["message"],
        documentationUrl: json["documentation_url"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "documentation_url": documentationUrl,
      };
}
