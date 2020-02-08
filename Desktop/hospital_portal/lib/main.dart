import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Home.dart';
import 'package:hospital_portal/screens/Hospital.dart';
import 'package:hospital_portal/screens/Verification.dart';
import 'package:hospital_portal/screens/Registration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(

      ),
      initialRoute: Home.id,
      routes: {
        Verification.id: (context) => Verification(),
        Registration.id: (context) => Registration(),
        Hospital.id: (context) => Hospital(),
      },
    );
  }
}

