import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  static const String id = 'verification';
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends  State<Verification>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home'),centerTitle: true,
        ),
        drawer: Drawer(child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF01579B),
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Register'),
              onTap: () {
                Navigator.pushNamed(context, Registration.id);
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
