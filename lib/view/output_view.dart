import 'package:first_program/model/student.class.dart';
import 'package:flutter/material.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              "FirstName : ${student.fname}",
              style: TextStyle(fontSize: 20),
            ),
            Text("LastName : ${student.lname}", style: TextStyle(fontSize: 20)),
            Text(
              "Student City: ${student.city}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
