import 'package:flutter/material.dart';
import 'package:my_app/screen/first_screen.dart';
import 'package:my_app/screen/second_screen.dart';
import 'package:my_app/screen/third_screen.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
          title: Text("My Tab bar"),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.pink,
              unselectedLabelColor: Colors.pinkAccent.shade200,
              indicatorColor: Colors.pink,
              tabs: [
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.message), text: "chats",),
            Tab(icon: Icon(Icons.phone), text: "Calls",)
          ]),
        ),
      body: TabBarView(children: [
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
      ]),
      ),
    );
  }
}
