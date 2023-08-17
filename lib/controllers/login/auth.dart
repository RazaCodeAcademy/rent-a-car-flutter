import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rent_a_car/models/auth/loginpresponce_model.dart';
import 'package:rent_a_car/models/auth/loginrequest_model.dart';
import 'package:rent_a_car/shared-services/login_share_services.dart';

class LoginAuthService{
  static var client = http.Client();
  static  Future<bool?> authenticate(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      // "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(
        "https://rentacar.biqta.com/api/v1/auth/login");

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model.toJson()));
        print(response.body);
    // return courseResponseJson(response.body);

       if(response.statusCode== 200){
        // await LoginSharedServices.setLoginDetails(
        
        // );
       }
  }
}