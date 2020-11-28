import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

          body:
         Container( child: SingleChildScrollView (child: Column(children: <Widget>[

           Container(
               alignment: Alignment.center,
               padding: EdgeInsets.all(10),
               child: Text(
                 'Propel',
                 style: TextStyle(
                     color: Colors.blue,
                     fontWeight: FontWeight.w500,
                     fontSize: 30),
               )),
           Container(
                margin: EdgeInsets.all(10),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),

                )),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),

                )),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                )),

            Container(
                margin: EdgeInsets.all(10),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )),
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Sign Up'),
                onPressed: () {

                },
              )
          )
      ])))),
    );
  }
}