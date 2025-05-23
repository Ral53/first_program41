import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String title;
  final Widget destination;

  const NavigationButton({
    super.key,
    required this.title,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ), // spacing between buttons
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundColor: Colors.blueAccent, // Button background color
          // foregroundColor: Colors.white, // Text/icon color
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0,
          ), // Padding inside button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          // elevation: 4, // Shadow/elevation
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => destination),
          );
        },
        child: Text(title),
      ),
    );
  }
}
