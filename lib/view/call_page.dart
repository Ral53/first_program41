import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            'OpenSans Regular',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans Regular",
            ),
          ),
          Text(
            'OpenSans Bold',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans Bold",
            ),
          ),
          Text(
            'OpenSans Italic',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "OpenSans Italic",
            ),
          ),
          Text(
            'Roboto SemiBold',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto SemiBold",
            ),
          ),
          Text(
            'Roboto ThinItalic',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto ThinItalic",
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Color("0xFF6Db0f4) here 0xFF is for # in #6Db0f4',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto ThinItalic",
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Read about HIVE',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              fontFamily: "Roboto ThinItalic",
            ),
          ),
        ],
      ),
    );
  }
}
