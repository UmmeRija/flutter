import 'package:flutter/material.dart';
import 'package:my_app/to_do_list/to_do_controller.dart';
import 'package:provider/provider.dart';

import 'add_todo.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
      ),
      body: Consumer<ToDoController>(builder: (context , provider , child){
        return provider.todo.isEmpty?Center(child: Text("No data found"),): ListView.builder(itemBuilder: (context , index){
          ToDoModel data = provider.todo[index];
          return ListTile(
            leading: Text("${index+1}" , style: TextStyle(fontSize: 18 , color: Colors.black),),
            title: Text(data.task , style: TextStyle(decoration: data.isDone? TextDecoration.lineThrough:TextDecoration.none),),
            subtitle: Text(data.isDone.toString()),
            trailing: Column(
              children: [
                Text(data.date),
                Text(data.time),
              ],
            ),
          );
        });

      }),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddTodo();
          }));
    },
        // floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)
        )
    );
  }
}
