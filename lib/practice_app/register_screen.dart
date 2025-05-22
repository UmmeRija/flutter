import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text("Register Form" , style: TextStyle(color: AppColors.textColor , fontSize: 30),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(

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
                child: TextFormField(decoration: InputDecoration(
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
                child: TextFormField(decoration: InputDecoration(
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
                onPressed: (){},
                child:Center(child: Text("Register" , style: TextStyle(color: AppColors.textColor,))),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Alredy Have An Account?"),
                  CupertinoButton(child: Text("Login") , onPressed: (){})
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}
