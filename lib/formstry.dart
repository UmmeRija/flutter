import 'package:flutter/material.dart';

class Formstry extends StatelessWidget {
  const Formstry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Apointment form"),
        centerTitle: true,
      ),
      body: Center(
          child: TextField(),

      ),
    );
  }
}
