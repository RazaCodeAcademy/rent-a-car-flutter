

import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:rent_a_car/models/auth/loginrequest_model.dart';
import 'package:rent_a_car/pages/dashboard/dashBoard.dart';
import 'package:rent_a_car/pages/home/homeScreen.dart';
import 'package:rent_a_car/controllers/login/auth.dart';

class LoginScreen extends StatefulWidget {
 LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final _econtroller=TextEditingController();
final _pcontroller=TextEditingController();
GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
bool isAPIcallProcess=false;
String? email;
String? password;
//regular expression to check if string
// RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");

//A function that validate user entered password
// bool validatePassword(String pass){
//   String _password=pass.trim();
//   if(pass_valid.hasMatch(_password))
//   {
//     return true;

//   }else{
//     return false;
//   }
// }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: size.height*0.1),
        child: Column(
          children: [
            Center(
                child: Image.asset(
              'assets/images/Rent_car_logo.png',
              scale: 2,
            )),
            Text(
              'Welcome to rent a car',
              style: TextStyle(fontSize: 20, color: Color(0xff00B83A)),
            ),
            SizedBox(height: size.height*0.02,),
            Text('Login to your account',style: TextStyle(fontSize: 15),),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: size.height*0.05),
                child: Container(
                  height: size.height*0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff00B83A),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(top: size.height*0.07,left: size.width*0.05,right: size.width*0.05),
                      child: Column(
                        children: [
                           //email textformfield
                            
                          TextFormField(
                            controller: _econtroller,
                            keyboardType:TextInputType.emailAddress,
                            // onChanged: (val){
                            //   globalFormKey.currentState!.validate();
                            // },
                            // validator: ((value) {
                            //   print(value);
                            //   if(value!.isEmpty){
                            //     return 'Please Enter Email';
                            //   }
                            //   else{
                            //     if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                            //       return 'Please Enter a Valid Email';
                            //     }
                            //     return null;
                            //   }
                            // }),
                            decoration: InputDecoration(
                              hintText: 'Email',
                               errorStyle: TextStyle(color: Colors.white),
                              hintStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(top: 5,left: 15),
                              enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               )
                              ),
                              focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                            
                          //password formfield
                           
                           SizedBox(height: size.height*0.04,),
                           TextFormField(
                            controller: _pcontroller,
                            keyboardType:TextInputType.multiline,
                            obscureText: true,
                            // validator: (value) {
                            //   if(value!.isEmpty){
                            //     return 'Please enter password';
                            //   }else{
                            //     bool result=validatePassword(value);
                            //     if(result){
                            //       return null;
                            //     }
                            //     // else{
                            //     //   return " Password should contain Capital, small letter & Number & Special";
                            //     // }
                            //   }
                            // },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              filled: true,
                              errorStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.only(top: 5,left: 15),
                              enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               )
                              ),
                              focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                               borderSide: BorderSide(
                                color: Colors.transparent,
                               ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                  
                          //next button 
                          SizedBox(height: size.height*0.04,),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder( //to set border radius to button
                               borderRadius: BorderRadius.circular(30),
                                   ),
                            ),
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard())));
                              if(validateAndSave()){
                                setState(() {
                                  isAPIcallProcess=true;
                                  email=_econtroller.text;
                                  password=_pcontroller.text;
                                  LoginRequestModel model=LoginRequestModel(
                                    email: email,password: password
                                  );
                                  LoginAuthService.authenticate(model).then((response) => {
                                    setState((){
                                      isAPIcallProcess=false;
                                    }),
                                    if(response!){
                                      Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())))
                                    }
                                    else{
                                     
                                    }
                                  });
                                });
                              }
                              
                            }, 
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 130),
                                  child: Text('Next',style: TextStyle(fontSize: 18,color: Colors.white),),
                                ),
                                Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                              ],
                            ),
                            ),
                        ),
                        SizedBox(height: size.height*0.12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text('Want to register?',style: TextStyle(fontSize: 13,color: Colors.white),),
                              Padding(padding: EdgeInsets.only(right: 5)),
                              Text('Contact Us',style: TextStyle(fontSize: 13,color: Colors.black),),
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
                 ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
