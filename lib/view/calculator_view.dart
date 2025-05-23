import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  List<String> history = [];
  final lstText = [
    "C",
    "^",
    "/",
    "<-",
    "1",
    "2",
    "3",
    "+",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "*",
    "%",
    "0",
    ".",
    "=",
  ];
  final formController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  double? firstNum;
  double? secondNum;
  double? result;
  String operator = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              key: formKey,
              controller: formController,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 30, color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 4,
                children: [
                  for (int i = 0; i < lstText.length; i++) ...{
                    ElevatedButton(
                      onPressed: () {
                        if (lstText[i].contains(RegExp(r'[0-9]'))) {
                          formController.text += lstText[i];
                        } else if (lstText[i] == "C") {
                          formController.clear();
                          firstNum = null;
                          secondNum = null;
                          operator = "";
                        } else if (lstText[i] == "<-") {
                          if (formController.text.isNotEmpty) {
                            formController.text = formController.text.substring(
                              0,
                              formController.text.length - 1,
                            );
                          }
                        } else if (lstText[i] == ".") {
                          if (!formController.text.contains(".")) {
                            formController.text += ".";
                          }
                        } else if ([
                          "+",
                          "-",
                          "*",
                          "/",
                          "^",
                          "%",
                        ].contains(lstText[i])) {
                          firstNum = double.parse(formController.text);
                          operator = lstText[i];
                          formController.clear();
                        } else if (lstText[i] == "=") {
                          secondNum = double.parse(formController.text);
                          switch (operator) {
                            case "^":
                              result = pow(firstNum!, secondNum!).toDouble();
                              break;
                            case "/":
                              result =
                                  (secondNum == 0) ? 0 : firstNum! / secondNum!;
                              break;
                            case "*":
                              result = firstNum! * secondNum!;
                              break;
                            case "+":
                              result = firstNum! + secondNum!;
                              break;
                            case "-":
                              result = firstNum! - secondNum!;
                              break;
                            case "%":
                              result = firstNum! % secondNum!;
                              break;
                            default:
                              result = 0;
                          }
                          var str = result! % 1 == 0 ? result!.toInt() : result;
                          formController.text = str.toString();

                          setState(() {
                            history.add(
                              "$firstNum $operator $secondNum = $result",
                            );
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.blueGrey[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(lstText[i], style: TextStyle(fontSize: 30)),
                    ),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
