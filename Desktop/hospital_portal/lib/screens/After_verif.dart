import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class After_verif extends StatefulWidget{
  static const String id = 'After_verif';
  _After_verifState createState() => _After_verifState();
}

class _After_verifState extends State<After_verif>{
  bool datafound = true;
  IconData _icon;
  String _txt;
  Color _clr;


  void initState() {

    if(datafound==false){
      _icon = Icons.verified_user;
      _clr = Colors.green;
      _txt = 'You have been Verified. Congratulations 😊';
    }
    else{
      _icon = Icons.info;
      _clr = Colors.red[800];
      _txt = 'Error';
    }
    super.initState();

  }


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(_icon,color: _clr,size: 150.0,),
            SizedBox(
              height: 3.0,
            ),
            Text(_txt,style: TextStyle(fontSize: 18.0),),

          ],
        )
      )

    );
  }
}