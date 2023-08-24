import 'package:flutter/material.dart';
import 'package:rent_a_car/models/auth/loginrequest_model.dart';
import 'package:rent_a_car/pages/dashboard/dashBoard.dart';
import 'package:rent_a_car/controllers/login/auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _econtroller = TextEditingController();
  final _pcontroller = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool isAPIcallProcess = false;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.1),
        child: Column(
          children: [
            Center(
                child: Image.asset(
              'assets/images/Rent_car_logo.png',
              scale: 2,
            )),
            Text(
              'Welcome to rent a car',
              style: TextStyle(fontSize: 20,fontFamily: 'MontB', color: Color(0xff00B83A)),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'Login to your account',
              style: TextStyle(fontSize: 15,fontFamily: 'MontS',fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: size.height * 0.05),
                child: Container(
                  height: size.height * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff00B83A),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.07,
                            left: size.width * 0.05,
                            right: size.width * 0.05),
                        child: Column(
                          children: [
                            //email textformfield

                            TextFormField(
                              controller: _econtroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                errorStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(color: Colors.black,fontFamily: 'MontM'),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 15),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    )),
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

                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            TextFormField(
                              controller: _pcontroller,
                              keyboardType: TextInputType.multiline,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.black,fontFamily: 'MontM'),
                                fillColor: Colors.white,
                                filled: true,
                                errorStyle: TextStyle(color: Colors.white),
                                contentPadding:
                                    EdgeInsets.only(top: 5, left: 15),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    )),
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
                            SizedBox(
                              height: size.height * 0.04,
                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: ((context) => Dashboard())));
                                  if (validateAndSave()) {
                                    setState(() {
                                      isAPIcallProcess = true;
                                      email = _econtroller.text;
                                      password = _pcontroller.text;
                                      LoginRequestModel model =
                                          LoginRequestModel(
                                              email: email, password: password);
                                      LoginAuthService.authenticate(model)
                                          .then((response) => {
                                                setState(() {
                                                  isAPIcallProcess = false;
                                                }),
                                                if (response!)
                                                  {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: ((context) =>
                                                                Dashboard()))),
                                                  }
                                                else
                                                  {
                                                    showDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          AlertDialog(
                                                            backgroundColor: Color(0xff00B83A),
                                                            elevation: 10,
                                                        title:
                                                            Text('Rent a car'),
                                                        content: Text(
                                                            'Invalid Email/Password !'),
                                                        actions: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child:
                                                                  Text('ok',style: TextStyle(color: Colors.black),)),
                                                        ],
                                                      ),
                                                    ),
                                                  }
                                              });
                                    });
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 130),
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white,fontFamily: 'MontB',),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Want to register?',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white,fontFamily: 'MontM',fontWeight: FontWeight.bold),
                                ),
                                Padding(padding: EdgeInsets.only(right: 5)),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black,fontFamily: 'MontS',fontWeight: FontWeight.bold),
                                ),
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
