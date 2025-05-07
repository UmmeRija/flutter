import 'package:flutter/material.dart';

class ImageWork extends StatelessWidget {
  const ImageWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.network("https://i.ytimg.com/vi/K6oFaLWmD3I/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCALawlJcvw94xuTd-3fA7Qa_Nx3A"),
      ),
    );
  }
}
