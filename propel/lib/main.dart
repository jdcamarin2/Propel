import 'package:flutter/material.dart';
import 'package:propel/screens/login_screen.dart';
import 'package:propel/screens/signup.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: false,
        //home: SignUpScreen());
       //home: LoginScreen());
        routes: {
          '/': (context) => LogIn(),
        '/details': (context) => SignUp(),
        }
  }
}

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
       home:
    )
  }
}