import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:my_app/apis/api_practice/user_modelAgain.dart';

class UserScreenAgain extends StatelessWidget {
  const UserScreenAgain({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<userModel>> getUse() async {
      String baseUrl = 'https://jsonplaceholder.typicode.com/users';
      Uri url = Uri.parse(baseUrl);
      var response = await http.get(url);
      List convertData = convert.jsonDecode(response.body);
      return convertData.map((value) => userModel.fromJson(value)).toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("User Data"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: FutureBuilder(
        future: getUse(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var data = snapshot.data![index];
              return ListTile(title: Text(data.name!));
            },
          );
        },
      ),
    );
  }
}
