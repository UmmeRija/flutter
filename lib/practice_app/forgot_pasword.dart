import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/practice_app/register_screen.dart';

import 'app_colors.dart';

class ForgotPasword extends StatelessWidget {
  const ForgotPasword({super.key});

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
              Text("Forget Pasword" , style: TextStyle(color: AppColors.textColor , fontSize: 20),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Email" , hintStyle: TextStyle(color: AppColors.textColor,
                    fontSize: 20),
                    prefixIcon: Icon(Icons.email , color: AppColors.textColor,)
                ),),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ) ,
                onPressed: (){},
                child:Center(child: Text("Send" , style: TextStyle(color: AppColors.textColor,))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
