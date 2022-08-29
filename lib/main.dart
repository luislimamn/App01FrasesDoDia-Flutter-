import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frase do Dia",
    home: Container(
      //color: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      //margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
      //margin: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 30,bottom: 2),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Column(
        children: <Widget>[
          Text("T1"),

          Padding(
              padding: EdgeInsets.all(30),
              child: Text("T2"),
          ),

          Text("T3")
        ],
      ),
    ),
  ));
}