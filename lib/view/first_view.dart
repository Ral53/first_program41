import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int result = 0;

  final firstController = TextEditingController(text: "1");
  final secondController = TextEditingController(text: "2");

  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my first flutter app"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 226, 174, 170),
        elevation: 0,
      ),
      body: SingleChildScrollView( // Prevent overflow on smaller screens
        padding: const EdgeInsets.all(12),
        child: Form(
          key: myKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter first no :",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: firstController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter second no :",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                keyboardType: TextInputType.number,
                controller: secondController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      int first = int.parse(firstController.text);
                      int second = int.parse(secondController.text);

                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: Text("Add"),
                ),
              ),
              const SizedBox(height: 16),

              Container(
                color: Colors.blueGrey,
                width: double.infinity,
                height: 300,
                child: RichText(
                  text: TextSpan(
                    text: "The ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: "bold",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                      TextSpan(
                        text: " is $result",
                        style: const TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
