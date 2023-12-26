//

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? message;
  String? accessToken;
  String? tokenType;

  LoginModel({
    this.message,
    this.accessToken,
    this.tokenType,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["Message"],
        accessToken: json["access_token"],
        tokenType: json["token_type"],
      );

  Map<String, dynamic> toJson() => {
        "Message": message,
        "access_token": accessToken,
        "token_type": tokenType,
      };
}
