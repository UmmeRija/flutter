import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/practice_app/forgot_pasword.dart';
import 'package:my_app/practice_app/register_screen.dart';

import 'app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController paswordControler = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Text("Login Form" , style: TextStyle(color: AppColors.textColor , fontSize: 20),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailControler,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Pasword field is empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Email" , hintStyle: TextStyle(color: AppColors.textColor,
                  fontSize: 20),
                    prefixIcon: Icon(Icons.email , color: AppColors.textColor,)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: paswordControler,
                    validator: (value){
                      if(value!.isEmpty){
                        return "Pasword field is empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Pasword" , hintStyle: TextStyle(color: AppColors.textColor,
                      fontSize: 20),
                    prefixIcon: Icon(Icons.lock , color: AppColors.textColor)
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(child: Text("Forget pasword"), onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ForgotPasword();
                      }));
                    })
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ) ,
                    onPressed: (){
                      if(_key.currentState!.validate());
                    },
                    child:Center(child: Text("Login" , style: TextStyle(color: AppColors.textColor,))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have An Account?"),
                    CupertinoButton(child: Text("Register") , onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return RegisterScreen();
                      }));
                    })
                  ],
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
