import 'package:first_program/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                showMySnackBar(
                  context: context,
                  content: "Container 1 clicked",
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: double.infinity,
                child: Text(
                  "Container 1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onDoubleTap: () {
                showMySnackBar(
                  context: context,
                  content: "Container 2 clicked",
                  color: Colors.red,
                );
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.amber,
                width: double.infinity,
                child: Text("Container 2", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
