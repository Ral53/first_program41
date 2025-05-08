import 'dart:math';
import 'package:flutter/material.dart';

class ArmstrongView extends StatefulWidget {
  const ArmstrongView({super.key});

  @override
  State<ArmstrongView> createState() => _ArmstrongViewState();
}

class _ArmstrongViewState extends State<ArmstrongView> {
  final TextEditingController numberController = TextEditingController();
  String armstrongResult = '';
  List<int> randomArmstrongNumbers = [];

  bool isArmstrong(int num) {
    int sum = 0;
    int temp = num;
    int length = temp.toString().length;

    while (temp > 0) {
      int digit = temp % 10;
      sum += pow(digit, length).toInt();
      temp ~/= 10;
    }

    return sum == num;
  }

  void generateRandomArmstrongNumbers() {
    List<int> knownArmstrongNumbers = [
    153, 370, 371, 407,
    1634, 8208, 9474,
    54748, 92727, 93084,
    548834
    ];

    knownArmstrongNumbers.shuffle();
    randomArmstrongNumbers = knownArmstrongNumbers.take(5).toList(); 

    setState(() {});
  }

  void checkArmstrong() {
    int number = int.tryParse(numberController.text) ?? 0;
    setState(() {
      if (isArmstrong(number)) {
        armstrongResult = '$number is an Armstrong number.';
      } else {
        armstrongResult = '$number is not an Armstrong number.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Armstrong Number Checker'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.8),
        child: Column(
          children: [
            // Input field to check Armstrong number
            TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter a number to check Armstrong:",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkArmstrong,
              child: const Text("Check Armstrong Number"),
            ),
            const SizedBox(height: 20),
            Text(armstrongResult, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: generateRandomArmstrongNumbers,
              child: const Text("Generate 5 Armstrong Numbers"),
            ),
            const SizedBox(height: 20),
            Text(
              randomArmstrongNumbers.isNotEmpty
                  ? 'Random Armstrong Numbers: ${randomArmstrongNumbers.join(', ')}'
                  : 'No Armstrong numbers generated yet.',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
