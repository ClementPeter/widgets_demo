import 'package:flutter/material.dart';

class ReorderableListPage extends StatelessWidget {
  const ReorderableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Reorderable List"),
      ),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {},
        children: const [
          ListTile(
            key: ValueKey(1),
            title: Text("Item 1"),
          ),
          ListTile(
            key: ValueKey(2),
            title: Text("Item 2"),
          ),
          ListTile(
            key: ValueKey(3),
            title: Text("Item 3"),
          ),
          ListTile(
            key: ValueKey(4),
            title: Text("Item 4"),
          ),
          ListTile(
            key: ValueKey(5),
            title: Text("Item 5"),
          ),
          ListTile(
            key: ValueKey(6),
            title: Text("Item 6"),
          ),
          ListTile(
            key: ValueKey(7),
            title: Text("Item 7"),
          ),
          ListTile(
            key: ValueKey(8),
            title: Text("Item 8"),
          ),
          ListTile(
            key: ValueKey(9),
            title: Text("Item 9"),
          ),
          ListTile(
            key: ValueKey(10),
            title: Text("Item 10"),
          ),
        ],
      ),
    );
  }
}
