import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/practice_app/login_screen.dart';

import 'app_colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameControler = TextEditingController();
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
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text("Register Form" , style: TextStyle(color: AppColors.textColor , fontSize: 30),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: usernameControler,
                  validator: (value){
                    if(value!.isEmpty){
                      return "User name is empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Name" , hintStyle: TextStyle(color: AppColors.textColor,
                    fontSize: 20),
                    prefixIcon: Icon(Icons.person , color: AppColors.textColor, )
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailControler,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Email field is empty";
                    }
                    return null;
                  } ,
                  style: TextStyle(color: AppColors.textColor),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Email" , hintStyle: TextStyle(color: AppColors.textColor,
                    fontSize: 20),
                    prefixIcon: Icon(Icons.email , color: AppColors.textColor)
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
                    prefixIcon: Icon(Icons.lock, color: AppColors.textColor)
                ),),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ) ,
                onPressed: (){
                  if(_key.currentState!.validate()){}
                },
                child:Center(child: Text("Register" , style: TextStyle(color: AppColors.textColor,))),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alredy Have An Account?"),
                  CupertinoButton(child: Text("Login") , onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }));
                  })
                ],
              ),
            ],

          ),
        ),
      ),

    );
  }
}
