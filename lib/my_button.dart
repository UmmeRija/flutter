import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(child: Text("Buttons")),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              // style: ButtonStyle(backgroundColor: Colors.pink.shade100,),


                onPressed: (){
              return debugPrint("object");
            },
                child:Text("Rija" , style: TextStyle(color: Colors.pink),)),
          ],
        ),
      ),
    );
  }
}
