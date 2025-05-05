import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("First Screen" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.pink.shade600, fontSize: 40),)
    );

  }
}
