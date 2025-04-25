import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink.shade100,
        height: 200,
        width: 200,
        child: Text("Rija Babar"),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(80),


      ),
    );
  }
}
