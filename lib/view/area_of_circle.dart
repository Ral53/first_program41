import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0;
  double result = 0;

  void calculateArea() {
    const double pi = 3.1415;
    setState(() {
      result = pi * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Enter radius of circle:",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  radius = double.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateArea,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 20),
            Text(
              "Area of Circle = ${result.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
