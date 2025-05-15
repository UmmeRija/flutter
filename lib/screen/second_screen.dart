import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return SecondScreen();
              }));
            },
          child: Text("Move to Second Screen" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),) ),
      ElevatedButton(onPressed: (){
        Navigator.pop(context);
        }, child: Text("move back")),
          ],
        ),

    )
    );
  }
}
