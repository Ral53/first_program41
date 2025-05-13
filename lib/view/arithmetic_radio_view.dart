import 'package:first_program/model/arithmetic_radio_model.dart';
import 'package:flutter/material.dart';

class ArithmeticRadioView extends StatefulWidget {
  const ArithmeticRadioView({super.key});

  @override
  State<ArithmeticRadioView> createState() => _ArithmeticRadioViewState();
}

class _ArithmeticRadioViewState extends State<ArithmeticRadioView> {
  late ArithmeticRadioModel arithmeticRadioModel;

  String result = "0";

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  final myKey = GlobalKey<FormState>();
  String? group;

  void calculate() {
    try {
      arithmeticRadioModel = ArithmeticRadioModel(
        first: int.parse(firstController.text),
        second: int.parse(secondController.text),
      );

      setState(() {
        if (group == "add") {
          result = arithmeticRadioModel.add().toString();
        } else if (group == "sub") {
          result = arithmeticRadioModel.sub().toString();
        } else if (group == "mult") {
          result = arithmeticRadioModel.mult().toString();
        } else if (group == "div") {
          result = arithmeticRadioModel.divide().toStringAsFixed(2);
        } else {
          result = "Please select an operation";
        }
      });
    } catch (e) {
      setState(() {
        result = "Error: ${e.toString()}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Arithmetic")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "First Number:"),
            ),
            TextFormField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Second Number:"),
            ),
            ListTile(
              title: const Text("Add"),
              leading: Radio<String>(
                value: "add",
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Subtract"),
              leading: Radio<String>(
                value: "sub",
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Multiply"),
              leading: Radio<String>(
                value: "mult",
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("Divide"),
              leading: Radio<String>(
                value: "div",
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ElevatedButton(onPressed: calculate, child: const Text("Result")),
            const SizedBox(height: 20),
            Text("Result: $result", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
