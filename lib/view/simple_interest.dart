import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  final TextEditingController pController = TextEditingController();
  final TextEditingController rController = TextEditingController();
  final TextEditingController tController = TextEditingController();

  double result = 0;

  void calculateSI() {
    final double p = double.tryParse(pController.text) ?? 0;
    final double r = double.tryParse(rController.text) ?? 0;
    final double t = double.tryParse(tController.text) ?? 0;

    setState(() {
      result = (p * r * t) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: pController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Principal (P)"),
            ),
            TextField(
              controller: rController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Rate (R)"),
            ),
            TextField(
              controller: tController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Time (T)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSI,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 20),
            Text(
              "Simple Interest = $result",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
