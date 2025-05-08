import 'package:first_program/view/arear_of_circle.dart';
import 'package:first_program/view/armstrong_view.dart';
import 'package:first_program/view/first_view.dart';
import 'package:first_program/view/layout_view.dart';
import 'package:first_program/view/palindrome_view.dart';
import 'package:first_program/view/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.8),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FirstView()),
                );
              },
              child: const Text("Go to First View"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SiView()),
                );
              },
              child: const Text("Go to Sample Interest"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AreaOfCircle()),
                );
              },
              child: const Text("Go to Area of Circle"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ArmstrongView()),
                );
              },
              child: const Text("Go to Armstrong"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PalindromeView()),
                );
              },
              child: const Text("Go to Palindrome"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LayoutView()),
                );
              },
              child: const Text("Go to Layout_View"),
            ),
          ],
        ),
      ),
    );
  }
}
