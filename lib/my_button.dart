import 'package:flutter/cupertino.dart';
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent.shade100,

              ) ,
              // style: ButtonStyle(backgroundColor: Color(Colors.pinkAccent),),
                onPressed: (){
              return debugPrint("object");
            },
                child:Center(child: Text("Rija" , style: TextStyle(color: Colors.pink),))),
            TextButton(onPressed: (){}, child:Text("Rija"), ),
            CupertinoButton(child: Text("Rija babar"), onPressed: (){}),
            OutlinedButton(onPressed: (){}, child:Text("Rija Babar")),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: (){},
          child: Icon(Icons.message),
      ),
    );
  }
}
