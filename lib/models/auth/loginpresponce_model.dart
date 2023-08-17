import 'dart:convert';
LoginResponseModel loginResponseJson(String str) =>
LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  final bool? success;
  final User? user;

  LoginResponseModel({
    this.success,
    this.user,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'user' : user?.toJson()
  };
}

class User {
  final bool? isActive;
  final String? id;
  final String? name;
  final String? email;
  final String? role;
  final String? password;
  final String? createdAt;
  final int? v;
  final String? token;

  User({
    this.isActive,
    this.id,
    this.name,
    this.email,
    this.role,
    this.password,
    this.createdAt,
    this.v,
    this.token,
  });

  User.fromJson(Map<String, dynamic> json)
    : isActive = json['is_active'] as bool?,
      id = json['_id'] as String?,
      name = json['name'] as String?,
      email = json['email'] as String?,
      role = json['role'] as String?,
      password = json['password'] as String?,
      createdAt = json['createdAt'] as String?,
      v = json['__v'] as int?,
      token = json['token'] as String?;

  Map<String, dynamic> toJson() => {
    'is_active' : isActive,
    '_id' : id,
    'name' : name,
    'email' : email,
    'role' : role,
    'password' : password,
    'createdAt' : createdAt,
    '__v' : v,
    'token' : token
  };
}