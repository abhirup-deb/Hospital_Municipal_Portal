import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Homepage.dart';
import 'package:hospital_portal/screens/Verification.dart';
import 'package:hospital_portal/screens/Registration.dart';
import 'package:sqflite/sqflite.dart';
import 'package:simple_search_bar/simple_search_bar.dart';
import 'package:path/path.dart' as p;

class Hospital extends StatefulWidget {
  static const String id = 'hospital';
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends  State<Hospital>{
  AppBarController appBarController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Hospital'),actions: <Widget>[

    ],
    ),
        drawer: Drawer(child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF01579B),
              ),
              child: Text(
                'Hospital',
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

          ],
        ),),
      body: SearchAppBar(primary: Theme.of(context).primaryColor,
        appBarController: appBarController,
        // You could load the bar with search already active
        autoSelected: true,
        searchHint: "Pesquise aqui...",
        mainTextColor: Colors.white,
        onChange: (String value) {
          //Your function to filter list. It should interact with
          //the Stream that generate the final list
        },
        //Will show when SEARCH MODE wasn't active
        mainAppBar: AppBar(
          title: Text("Yout Bar Title"),
          actions: <Widget>[
            InkWell(
              child: Icon(
                Icons.search,
              ),
              onTap: () {
                //This is where You change to SEARCH MODE. To hide, just
                //add FALSE as value on the stream
                appBarController.stream.add(true);
              },
            ),
          ],
        ),
      ),
    );
  }
}