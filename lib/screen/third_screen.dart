import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const  ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Text("Third Screen" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink.shade600, fontSize: 40),),
    );
  }
}
