import 'package:first_program/model/student.class.dart';
import 'package:first_program/view/output_view.dart';
import 'package:flutter/material.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  final _formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();

  List<Student> lstStudent = [];

  final List<String> cities = [
    'Pokhara',
    'Chitwan',
    'Tulsipur',
    'Lalitpur',
    'Butwal',
    'Kathmandu',
  ];
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student ListView")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: firstnameController,
                      decoration: const InputDecoration(
                        labelText: "First Name:",
                      ),
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? 'Enter first name'
                                  : null,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: lastnameController,
                      decoration: const InputDecoration(
                        labelText: "Last Name:",
                      ),
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? 'Enter last name'
                                  : null,
                    ),
                    const SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      value: selectedCity,
                      decoration: const InputDecoration(
                        labelText: "Select City",
                      ),
                      items:
                          cities.map((String city) {
                            return DropdownMenuItem<String>(
                              value: city,
                              child: Text(city),
                            );
                          }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCity = newValue;
                        });
                      },
                      validator:
                          (value) =>
                              value == null ? 'Please select a city' : null,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final student = Student(
                              fname: firstnameController.text,
                              lname: lastnameController.text,
                              city: selectedCity!,
                            );
                            setState(() {
                              lstStudent.add(student);
                              firstnameController.clear();
                              lastnameController.clear();
                              selectedCity = null;
                            });
                          }
                        },
                        child: const Text("Add Student"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Student List",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child:
                    lstStudent.isNotEmpty
                        ? ListView.builder(
                          itemCount: lstStudent.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: const Icon(Icons.person),
                              title: Text(
                                "${lstStudent[index].fname} ${lstStudent[index].lname}",
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => OutputView(
                                            student: lstStudent[index],
                                          ),
                                    ),
                                  );
                                });
                              },
                              subtitle: Text(lstStudent[index].city),
                              trailing: Wrap(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        AlertDialog alert = AlertDialog(
                                          title: const Text("Delete"),
                                          content: Text(
                                            "Are you sure you want to delete ${lstStudent[index].fname} ??",
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("No"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  lstStudent.removeAt(index);
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Yes"),
                                            ),
                                          ],
                                        );
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return alert;
                                          },
                                        );
                                      });
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                        : const Center(child: Text("No data")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
