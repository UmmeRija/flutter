// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// import 'package:my_app/apis/user_model.dart';
//
//
// class UsersScreens extends StatelessWidget {
//   const UsersScreens({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Future<List<UserModel>> getUser() async{
//       String baseUrl = 'https://jsonplaceholder.typicode.com/users';
//       Uri url = Uri.parse(baseUrl);
//       var response = await http.get(url);
//       List convertedData =convert.jsonDecode(response.body) ;
//       return convertedData.map((value) => UserModel.fromJson(value)).toList();
//
//     }
//     return Scaffold(
//       appBar: AppBar(title: Text("User model"),
//         centerTitle: true,
//         backgroundColor: Colors.pink.shade100,
//       ),
//       body: FutureBuilder(future: getUser(),
//           builder: (context , snashort){
//         return ListView.builder(itemBuilder: (context , index){
//           var data snapshot.data![index];
//           return ListTile(
//             leading: Text("$[index+1]"),
//             title: Text(data.name!),
//           )
//         })
//           }),
//     );
//   }
// }
