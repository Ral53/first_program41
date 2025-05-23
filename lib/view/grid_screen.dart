import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  var setIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView")),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for (int i = 1; i < 11; i++)
            ElevatedButton(
              onPressed: () => setState(() => setIndex = i),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: setIndex == i ? Colors.green : Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: Text("Button $i"),
            ),
        ],
      ),
    );
  }
}
