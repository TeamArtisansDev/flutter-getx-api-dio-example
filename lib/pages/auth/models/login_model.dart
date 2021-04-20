import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class LoginModel {
  final String? username;
  final String? password;

  const LoginModel({this.username, this.password});

  @override
  String toString() {
    return 'LoginModel(username: $username, password: $password)';
  }

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      username: json['username'] as String?,
      password: json['password'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }

  LoginModel copyWith({
    String? username,
    String? password,
  }) {
    return LoginModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  bool operator ==(Object o) =>
      o is LoginModel &&
      identical(o.username, username) &&
      identical(o.password, password);

  @override
  int get hashCode => hashValues(username, password);
}
