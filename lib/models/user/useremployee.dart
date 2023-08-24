import 'dart:convert';

UserEmployeeResponceModel userResponseJson(String str) =>
    UserEmployeeResponceModel.fromJson(json.decode(str));

class UserEmployeeResponceModel {
  final bool? success;
  final int? count;
  final List<dynamic>? data;

  UserEmployeeResponceModel({
    this.success,
    this.count,
    this.data,
  });

  UserEmployeeResponceModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      count = json['count'] as int?,
      data = json['data'] as List?;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'count' : count,
    'data' : data
  };
}