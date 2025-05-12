import 'package:flutter/material.dart';

class TextfielsPractice extends StatelessWidget {
  const TextfielsPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(child: Text("Text Field")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),

            ),
            hintText: "First Name"
          ),
        ),
      ),
    );
  }
}
