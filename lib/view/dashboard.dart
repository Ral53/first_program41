import 'package:first_program/view/area_of_circle.dart';
import 'package:first_program/view/arithmetic_radio_view.dart';
import 'package:first_program/view/armstrong_view.dart';
import 'package:first_program/view/calculator_view.dart';
import 'package:first_program/view/column_view.dart';
import 'package:first_program/view/column_view2.dart';
import 'package:first_program/view/container_view.dart';
import 'package:first_program/view/first_view.dart';
import 'package:first_program/view/layout_view.dart';
import 'package:first_program/view/list_tile_view.dart';
import 'package:first_program/view/load_image_view.dart';
import 'package:first_program/view/palindrome_view.dart';
import 'package:first_program/view/simple_interest.dart';
import 'package:first_program/view/student_view.dart';
import 'package:flutter/material.dart';
import 'package:first_program/common/navigation_button.dart'; // Import the custom button

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = const [
      NavigationButton(title: "Go to First View", destination: FirstView()),
      NavigationButton(title: "Go to Sample Interest", destination: SiView()),
      NavigationButton(
        title: "Go to Area of Circle",
        destination: AreaOfCircle(),
      ),
      NavigationButton(title: "Go to Armstrong", destination: ArmstrongView()),
      NavigationButton(
        title: "Go to Palindrome",
        destination: PalindromeView(),
      ),
      NavigationButton(title: "Go to Layout_View", destination: LayoutView()),
      NavigationButton(title: "Go to Column View", destination: ColumnView()),
      NavigationButton(title: "Go to Column View2", destination: ColumnView2()),
      NavigationButton(title: "Go to List Tile", destination: ListTileView()),
      NavigationButton(
        title: "Go to Arithmetic",
        destination: ArithmeticRadioView(),
      ),
      NavigationButton(
        title: "Go to ContainerView",
        destination: ContainerView(),
      ),
      NavigationButton(
        title: "Go to LoadImageView",
        destination: LoadImageView(),
      ),
      NavigationButton(title: "Go to Layout View", destination: LayoutView()),
      NavigationButton(title: "Go to Student View", destination: StudentView()),
      NavigationButton(
        title: "Go to Calculator View",
        destination: CalculatorView(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buttons.reversed.toList(), // Reversed here
          ),
        ),
      ),
    );
  }
}
