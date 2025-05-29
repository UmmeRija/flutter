import 'package:flutter/material.dart';
import 'package:my_app/practice_app/app_colors.dart';

class ProdutScreen extends StatelessWidget {
  const ProdutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Text("Welcome Admin!" , style: TextStyle(color: AppColors.textColor),),
      ),
    );
  }
}
