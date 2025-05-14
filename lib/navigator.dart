import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyNavigator extends StatefulWidget {
  const MyNavigator({super.key});

  @override
  State<MyNavigator> createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: Container(
        alignment: Alignment.center,
          color: CupertinoColors.inactiveGray,
          width: 500,
          height: 500,
          child: TextField(
            decoration: InputDecoration(
            ),
          )

      ),


    );
  }
}
