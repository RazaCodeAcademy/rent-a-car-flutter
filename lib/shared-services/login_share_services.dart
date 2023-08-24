import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/home/homeScreen.dart';
import 'package:rent_a_car/models/auth/loginpresponce_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSharedServices {
  static Future<bool> isLoggedin() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var isKeyExist = token != null ? true : false;
    return isKeyExist;
  }

  static Future<List> loginDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var success = prefs.getString('success');
    var token = prefs.getString('token');
    var isKeyExist = token != null ? true : false;
    if (success == 'true' && isKeyExist) {
      return [token, success];
    }
    return [];
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('success', model.success.toString());
    await prefs.setString('token', model.user!.token.toString());
  }

  static Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('success');
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => HomeScreen())));
  }
}
