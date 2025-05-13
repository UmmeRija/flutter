import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});
  @override
  State<DateAndTime> createState() => _DateAndTimeState();
  // String? date;
}
date(){

}
class _DateAndTimeState extends State<DateAndTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_month),
            hintText: "05/12/2025"
          ),
        ),
      ),
    );
  }
}
