import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int counter = 0;
  increamentCounter(){
    counter++;
    notifyListeners();
  }
}