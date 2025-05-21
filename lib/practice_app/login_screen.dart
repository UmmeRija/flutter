import 'package:flutter/material.dart';

import 'app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text("Login Form" , style: TextStyle(color: Colors.grey , fontSize: 30),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Email" , hintStyle: TextStyle(color: AppColors.textColor,
                fontSize: 30),
                  suffixIcon: Icon(Icons.email)
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Pasword" , hintStyle: TextStyle(color: AppColors.textColor,
                    fontSize: 30),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ) ,
                  onPressed: (){},
                  child:Center(child: Text("Login" , style: TextStyle(color: AppColors.textColor,))),
              )
            ],

          ),
        ),
      ),
    );
  }
}
