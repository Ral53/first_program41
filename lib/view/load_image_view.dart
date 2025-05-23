import 'package:flutter/material.dart';

class LoadImageView extends StatefulWidget {
  const LoadImageView({super.key});

  @override
  State<LoadImageView> createState() => _LoadImageViewState();
}

class _LoadImageViewState extends State<LoadImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Container View"),
      //   centerTitle: true,
      //   backgroundColor: const Color.fromARGB(255, 187, 137, 134),
      //   elevation: 0,
      // ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width * .5,
            child: Image.asset('assets/images/landscape_flutter.jpg.jpg'),
          ),
        ],
      ),
    );
  }
}
