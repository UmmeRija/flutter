import 'package:flutter/material.dart';

import '../repo.dart';
class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        String name = chats[index]['name'];
        String image = chats[index]['image'];
        String message = chats[index]['message'];
        String time = chats[index]['time'];
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(image)),
          title: Text(name),
          subtitle: Text(message),
          trailing: Text(time),
        );
      },
    );
  }
}