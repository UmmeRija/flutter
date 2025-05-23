import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/bottom_bar.dart';
import 'package:my_app/image_work.dart';
import 'package:my_app/my_button.dart';
// import 'package:my_app/newOne.dart';
import 'package:my_app/new_packages/counter_provider.dart';
import 'package:my_app/practice_app/app_colors.dart';
import 'package:my_app/practice_app/login_screen.dart';
import 'package:my_app/practice_app/register_screen.dart';
import 'package:my_app/stack.dart';
import 'package:my_app/to_do_list/to_do_controller.dart';
import 'package:my_app/to_do_list/to_do_screen.dart';
import 'package:provider/provider.dart';
import 'app_bar.dart';
import 'firebase_options.dart';
import 'first_practice.dart';
// import 'whatsapp_screen.dart';
import 'formstry.dart';
import 'text_field.dart';
import 'date_and_time.dart';
import 'navigator.dart';
import 'sirka_code.dart';
import 'screen/first_screen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CounterProvider()),
        ChangeNotifierProvider(create: (_)=>ToDoController()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: AppColors.textColor),),

        // home: TabScreen(),
        // home: MyBottomBar(),
        // home: ImageWork(),
        // home: ListView(),
        // home: WhatsappScreen(),
        // home: Newone(),
        // home: MyButt---on(),
        // home: Formstry(),
        //   home: MyNavigator(),
        // home: MyForm(),
        // home: FirstScreen(),
        // home: FirstPractice(),
        // home: ToDoScreen(),
        // home: LoginScreen(),
        home: RegisterScreen(),
      ),
    );
  }
}




