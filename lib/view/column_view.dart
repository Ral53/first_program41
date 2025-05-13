import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column")),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, size: 50),
            Spacer(),
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
          ],
        ),
      ),
    );
  }
}
