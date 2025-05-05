import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Second Screen" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink.shade600, fontSize: 40),),
    );
  }
}
