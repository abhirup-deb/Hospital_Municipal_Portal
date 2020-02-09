import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String id = 'Homepage';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends  State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),centerTitle: true,
      ),
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
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
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Verification'),
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text('Hospital'),
          ),
        ],
      ),)
    );
  }
}