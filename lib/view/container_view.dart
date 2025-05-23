import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text("Container View"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 187, 137, 134),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.centerRight,
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Text("I am a container"),
          ),
        ),
      ),
    );
  }
}
