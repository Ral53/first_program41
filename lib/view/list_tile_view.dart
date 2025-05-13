import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LsitTitle")),
      body: ListTile(
        leading: const Icon(Icons.alarm),
        title: const Text("5:00 A.M."),
        subtitle: const Text("wake up early morning"),
        trailing: Wrap(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
