import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ZK')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2, // 2 boxes per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(6, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                  image: DecorationImage(
                    image: NetworkImage('data:image/jpeg;base64,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${index + 1}'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}



