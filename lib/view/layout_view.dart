import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 180, 213, 230),
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    // icon: const Icon(Icons.call)
                    icon: const FaIcon(FontAwesomeIcons.phone),
                  ),
                  const Text(
                    "Call",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    // icon: const Icon(Icons.message)
                    icon: const FaIcon(FontAwesomeIcons.message),
                  ),
                  const Text("Message"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.envelope),
                    // icon: const Icon(Icons.email),
                  ),
                  const Text("Email"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
