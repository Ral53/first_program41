import 'package:flutter/material.dart';

class CardView2 extends StatelessWidget {
  final String title;
  final Color color;
  
  const CardView2({
    super.key,
    required this.title,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 153, 119, 119),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(0),
          ),
        ),
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

