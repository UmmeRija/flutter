import 'package:flutter/material.dart';
import 'package:my_app/screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                 return SecondScreen();
              }));
            }, child: Text("Move to Second Screen" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),) )
          ],
        ),
      ),
    );


  }
}
