import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/first.dart';
import 'package:my_app/home.dart';

void main(){
  runApp(MyApp());
}
 class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return MaterialApp(
  home: MyApp()
  //   Scaffold(
  //   body: Stack(
  //     children: [
  //       Container(
  //         width: 100,
  //         height: 100,
  //         color: Colors.pink.shade100,
  //       ),
  //       Container(
  //         width: 100,
  //         height: 100,
  //         color: Colors.pink.shade200,
  //       ),
  //       Container(
  //         width: 100,
  //         height: 100,
  //         color: Colors.pink.shade300,
  //       ),
  //       Container(
  //         width: 100,
  //         height: 100,
  //         color: Colors.pink.shade400,
  //       )
  //
  //     ],
  //   ),
  // ),
);
  }
 }

