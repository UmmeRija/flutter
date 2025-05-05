import 'package:flutter/material.dart';
import 'package:my_app/screen/first_screen.dart';
import 'package:my_app/screen/second_screen.dart';
import 'package:my_app/screen/third_screen.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  List<Widget> screens = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen()
  ];
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: Text("My bottom bar"),
        centerTitle: true,
      ),
      body: screens[currenIndex],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenIndex,
          onTap: (value){
            setState(() {
              currenIndex = value;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label:  "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message) , label:  "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.phone) , label:  "Calls")
      ]),
    );
  }
}
