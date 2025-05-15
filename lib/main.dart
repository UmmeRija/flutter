import 'package:flutter/material.dart';
import 'package:my_app/bottom_bar.dart';
import 'package:my_app/image_work.dart';
import 'package:my_app/my_button.dart';
import 'package:my_app/newOne.dart';
import 'package:my_app/stack.dart';
import 'app_bar.dart';
import 'first_practice.dart';
import 'whatsapp_screen.dart';
import 'formstry.dart';
import 'text_field.dart';
import 'date_and_time.dart';
import 'navigator.dart';
import 'sirka_code.dart';
import 'screen/first_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      // home: TabScreen(),
      // home: MyBottomBar(),
      // home: ImageWork(),
      // home: ListView(),
      // home: WhatsappScreen(),
      // home: Newone(),
      // home: MyButton(),
      // home: Formstry(),
      //   home: MyNavigator(),
      // home: MyForm(),
      // home: FirstScreen(),
      home: FirstPractice(),
    );
  }
}
