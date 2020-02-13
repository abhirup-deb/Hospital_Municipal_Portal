import 'package:flutter/material.dart';
import 'package:hospital_portal/screens/Homepage.dart';
import 'package:hospital_portal/screens/Verification.dart';
import 'package:hospital_portal/screens/Registration.dart';

import 'package:flappy_search_bar/flappy_search_bar.dart';

class Hospital extends StatefulWidget {
  static const String id = 'hospital';
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends  State<Hospital>{
  SearchBarController _searchBarController;

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
      body: SafeArea(
        child: SearchBar<Post>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlPosts,
          searchBarController: _searchBarController,
          placeHolder: Text("placeholder"),
          cancellationWidget: Text("Cancel"),
          emptyWidget: Text("empty"),
          indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),
          header: Row(
            children: <Widget>[
              RaisedButton(
                child: Text("sort"),
                onPressed: () {
                  _searchBarController.sortList((Post a, Post b) {
                    return a.body.compareTo(b.body);
                  });
                },
              ),
              RaisedButton(
                child: Text("Desort"),
                onPressed: () {
                  _searchBarController.removeSort();
                },
              ),
              RaisedButton(
                child: Text("Replay"),
                onPressed: () {
                  isReplay = !isReplay;
                  _searchBarController.replayLastSearch();
                },
              ),
            ],
          ),
          onCancelled: () {
            print("Cancelled triggered");
          },
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          onItemFound: (Post post, int index) {
            return Container(
              color: Colors.lightBlue,
              child: ListTile(
                title: Text(post.title),
                isThreeLine: true,
                subtitle: Text(post.body),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}