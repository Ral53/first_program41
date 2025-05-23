import 'package:first_program/common/card_view1.dart';
import 'package:first_program/common/card_view2.dart';
import 'package:first_program/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 100; i++) ...{
                  if (i % 2 == 0) ...{
                    GestureDetector(
                      onTap: () {
                        showMySnackBar(context: context, content: "Card $i", color: Colors.red);
                      },
                      child:CardView1(title: "I am Card Widget $i", color: Colors.red),
                    )
                  }
                  else ...{
                    GestureDetector(
                      onTap: () {
                        showMySnackBar(context: context, content: "Card $i", color: Colors.white);
                      },
                      child:CardView2(title: "I am Card Widget $i", color: Colors.white),
                    )
                  },
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
