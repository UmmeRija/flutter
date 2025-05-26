import 'package:flutter/material.dart';
import 'package:my_app/practice_app/app_colors.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: Text("Category"),
      ),
    );
  }
}
