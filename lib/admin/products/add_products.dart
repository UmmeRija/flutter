import 'package:flutter/material.dart';
import 'package:my_app/practice_app/app_colors.dart';

class AddProducts extends StatelessWidget {
  const AddProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Text("App Products" , style: TextStyle(color: AppColors.textColor , letterSpacing: 4),),
        centerTitle: true,
      ),
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle
            ),

          )
        ],
      ),
    );
  }
}
