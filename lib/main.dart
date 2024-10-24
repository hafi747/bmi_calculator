import 'package:flutter/material.dart';
import 'padmad.dart';
void main() {
  runApp(bmi());
}
class bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(
        primaryColor:Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
       // textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))
      
        
      ),
      home:padmad(),
    );
  }
}

