import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Homepage.dart';
import 'package:hospital_portal/screens/Verification.dart';
import 'package:hospital_portal/screens/Hospital.dart';


class Registration extends StatefulWidget {
  static const String id = 'registration';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends  State<Registration>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Registration'),centerTitle: true,
        ),
        drawer: Drawer(child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF01579B),
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, Homepage.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Verification'),
              onTap: () {
                Navigator.pushNamed(context, Verification.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Hospital'),
              onTap: () {
                Navigator.pushNamed(context, Hospital.id);
              },
            ),
          ],
        ),)
    );
  }
}