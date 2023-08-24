// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:rent_a_car/global.dart';
// import 'package:rent_a_car/models/user/usercustomers.dart';
// import 'package:rent_a_car/shared-services/login_share_services.dart';


//   var client = http.Client(); 
//   Future<UserCustomerModel> fatchData() async{
//     var loginDetails=await LoginSharedServices();
//     print(loginDetails);
//      Map<String, String>? requestHeader = {
//       "Content-Type": "application/json",
//       "Access-Control-Allow-Origin": "*", 
//       "Access-Control-Allow-Credentials": true.toString(),
//       "Authorization": "Bearer ${loginDetails}"
//     };
//     var url=Uri.parse('${baseurl}/users/customer');
//     print('${baseurl}/users/customer');
//      print('API URL: $url');
//     final response= await http.get(url,
//     headers: requestHeader,
//     );
//       print('Response status code: ${response.statusCode}');
//   print('Response body: ${response.body}');
//     if(response.statusCode==200){
//       return UserCustomerModel.fromJson(json.decode(response.body));
//     }
//     else{
//       throw Exception('Failed to load data');
//     }
//   }
