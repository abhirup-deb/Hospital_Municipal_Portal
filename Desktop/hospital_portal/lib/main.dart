import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Homepage.dart';
import 'package:hospital_portal/screens/Hospital.dart';
import 'package:hospital_portal/screens/Verification.dart';
import 'package:hospital_portal/screens/Registration.dart';
import 'package:hospital_portal/ThemeSelect.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(
      ),
      home: Homepage(),
      initialRoute: Homepage.id,
      routes: {
        Homepage.id: (context) => Homepage(),
        Verification.id: (context) => Verification(),
        Registration.id: (context) => Registration(),
        Hospital.id: (context) => Hospital(),
      },
    );
  }

}

