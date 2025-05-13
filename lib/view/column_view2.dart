import 'package:flutter/material.dart';

class ColumnView2 extends StatelessWidget {
  const ColumnView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Btn1")),
              ElevatedButton(onPressed: () {}, child: const Text("Btn2")),
              ElevatedButton(onPressed: () {}, child: const Text("Btn3")),
            ],
          ),
        ),
      ),
    );
  }
}
