import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_a_car/pages/splashscreens/saplashScreen.dart';


void main(List<String> args) {
    // Step 2
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SaplashScreen(),
    );

  }
}