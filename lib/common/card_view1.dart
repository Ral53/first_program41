import 'package:flutter/material.dart';

class CardView1 extends StatelessWidget {
  final String title;
  final Color color;
  const CardView1({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 202, 200, 200),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
