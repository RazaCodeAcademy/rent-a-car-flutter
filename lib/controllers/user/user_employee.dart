// import 'dart:convert';


// import 'package:http/http.dart' as http;
// import 'package:rent_a_car/global.dart';
// import 'package:rent_a_car/models/user/useremployee.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//  Future<String> getToken() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     var token = prefs.getString('token');
//     return token!;
//     }
// Future<UserEmployeeResponceModel> getData() async{
//   final response=await http.get(Uri.parse('${baseurl}/users/employee'));
//   String? token=await getToken(); 
    
//   Map<String, String>? requestHeader = {
//       "Content-Type": "application/json",
//       "Access-Control-Allow-Origin": "*", 
//       "Access-Control-Allow-Credentials": true.toString(),
//       "Authorization": "Bearer $token",
//     };
//    if(response.statusCode==200){
//     return UserEmployeeResponceModel.fromJson(json.decode(response.body));
//    }else{
//     throw Exception('Failed to load data');
//    }
// }