import 'dart:html';

import 'package:flutter/material.dart';

class ThemeSelect extends StatefulWidget{
  static const String id = 'thm';
  _ThemeSelectState createState() => _ThemeSelectState();
}

class _ThemeSelectState extends State<ThemeSelect>{
TimeOfDay now;

  ThemeMode time_color(){
    now= TimeOfDay.now();
    if(now.toString().compareTo('1700')>0){
      return ThemeMode.dark;
    }
    else{
      return ThemeMode.light;
    }

  }


  @override
  Widget build(BuildContext context) {
    return widget.materialAppBuilder(context,time_color())time_color();
  }
}