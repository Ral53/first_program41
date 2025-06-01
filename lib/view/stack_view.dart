import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Felis_catus-cat_on_snow.jpg/800px-Felis_catus-cat_on_snow.jpg",
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.white,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
              ),
            ),
            Positioned(
              right: 290,
              bottom: 15,
              child: Container(
                height: 50,
                width: 100,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
