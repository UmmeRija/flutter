import 'package:flutter/material.dart';

import '../repo.dart';
import 'data.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.search),
          ),
          Icon(Icons.more_vert),
        ],

        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Text("Calls", style: TextStyle(fontSize: 30)),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Favorites",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                "Add Favorite",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Recent",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  String name = chats[index]['name'];
                  String image = chats[index]['image'];
                  // String message = chats[index]['message'];
                  String time = chats[index]['time'];
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(image)),
                    title: Text(name , style: TextStyle(color:  index.isEven? Colors.red : Colors.black ),),
                    subtitle:Text(time ,style: TextStyle(color:  index.isEven? Colors.red : Colors.black),),
                    trailing: Icon(Icons.phone),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
