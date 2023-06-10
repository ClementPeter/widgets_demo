import 'package:flutter/material.dart';

class ReorderableListPage extends StatelessWidget {
  const ReorderableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Reorderable List"),
      ),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {},
        children: [
          ListTile(
            key: const ValueKey(1),
            title: const Text("Item 1"),
          ),
          ListTile(
            key: const ValueKey(2),
            title: const Text("Item 2"),
          ),
          ListTile(
            key: const ValueKey(3),
            title: const Text("Item 3"),
          ),
          ListTile(
            key: const ValueKey(4),
            title: const Text("Item 4"),
          ),
          ListTile(
            key: const ValueKey(5),
            title: const Text("Item 5"),
          ),
          ListTile(
            key: const ValueKey(6),
            title: const Text("Item 6"),
          ),
          ListTile(
            key: const ValueKey(7),
            title: const Text("Item 7"),
          ),
          ListTile(
            key: const ValueKey(8),
            title: const Text("Item 8"),
          ),
          ListTile(
            key: const ValueKey(9),
            title: const Text("Item 9"),
          ),
          ListTile(
            key: const ValueKey(10),
            title: const Text("Item 10"),
          ),
        ],
      ),
    );
  }
}
