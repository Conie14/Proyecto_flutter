import 'package:flutter/material.dart';
import 'package:menu/home.dart';
 void main(){
   runApp(Aplication());
 }

 class Aplication extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Peliculas',
      home: Home(),
      theme: ThemeData(
        primaryColor: Color(0xff2f00be),
        accentColor: Color(0xfffd0303 )
      ),
    );
  }

 }