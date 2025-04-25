// import 'package:flutter/material.dart';
// import 'package:my_app/home.dart';
//
// void main(){
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
  // const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
// debugShowCheckedModeBanner: false,
//
//       title: "rija's App",
//       color: Colors.pink,
//       home: Home(),
//     );
//
//
import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First page",
      home: Home()

    );
  }
}