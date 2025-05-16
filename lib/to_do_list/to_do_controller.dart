
import 'package:flutter/widgets.dart';

class ToDoModel{
  String task;
  bool isDone = false;
  String date;
  String time;

  ToDoModel(this.task, this.isDone, this.date, this.time);
}

class ToDoController extends ChangeNotifier{
  List<ToDoModel> todo = [];

  int get todoQuantity => todo.length;
  addTodo(ToDoModel todomodel){
    todo.add(todomodel);
    print("to do added");
    notifyListeners();
  }
}