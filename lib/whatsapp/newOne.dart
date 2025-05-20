import 'package:flutter/material.dart';
import 'package:my_app/whatsapp/data.dart';
import 'package:my_app/whatsapp/uptates_screen.dart';

import 'calls_screen.dart';

class Newone extends StatefulWidget {
  const Newone({super.key});

  @override
  State<Newone> createState() => _NewoneState();
}

class _NewoneState extends State<Newone> {
  List<Widget> screens = [Data(), UptatesScreen(), Container(), CallsScreen()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade100,
          leadingWidth: 150,
          leading: Center(
            child: Text(
              "WhatsApp",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            tabs: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                ),

                onPressed: () {},
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Unread",
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Favorites",
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Groups",
                  style: TextStyle(color: Colors.grey.shade900),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add, color: Colors.grey.shade900),
              ),
            ],
            dividerColor: Colors.transparent,
          ),
        ),

        body: screens[currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Center(child: Icon(Icons.message, color: Colors.white)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
            BottomNavigationBarItem(
              icon: Icon(Icons.update_outlined),
              label: "Updates",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: "Communities",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
          ],
        ),
      ),
    );
  }
}

// Container(
// height: 50,
// width: double.infinity,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(color: Colors.black)
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 10),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// CircleAvatar(
// backgroundImage: Text(chats[index]['image']),
// ),
// Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(chats[index]['name'] , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),),
// Text(chats[index]['message'] , style: TextStyle(color: Colors.black),),
// ],
// ),
//
// Text(chats[index]['time'] , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),)
// ],
// ),
// ),
// );
