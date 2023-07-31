import 'package:flutter/material.dart';

//Auto re-ordering tiles
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
        ],
      ),
    );
  }
}

//manually re-ordering tiles
class AutoReorderableListPage extends StatefulWidget {
  const AutoReorderableListPage({super.key});

  @override
  State<AutoReorderableListPage> createState() =>
      _AutoReorderableListPageState();
}

class _AutoReorderableListPageState extends State<AutoReorderableListPage> {
  // list of tiles
  final List myTiles = [
    'Item 1',
    'Item 2',
    'Item 3',
    // 'Item 4',
    // 'Item 5',
    // 'Item 6',
  ];

  void updateMyTiles(int oldIndex, int newIndex) {
    //wrap in setstate to trigger a rebuild everytime we re-order a tile
    setState(() {
      if (oldIndex < newIndex) {
        // newIndex = newIndex-1;
        newIndex -= 1;
      }
      print('oldIndex inside update tile= $oldIndex');
      print('newIndex inside update tile= $newIndex');

      //get the tile we are moving
      final String tile = myTiles.removeAt(oldIndex);

      //place the tile in new position
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Reorderable List"),
      ),
      body: ReorderableListView(
        padding: const EdgeInsets.all(10),
        onReorder: (oldIndex, newIndex) {
          // print("old_Index: $oldIndex");
          // print('newIndex = $newIndex');
          updateMyTiles(oldIndex, newIndex);
        },
        children: [
          //use for-in loop to interate to "myTiles" list
          // for (final tile in myTiles)
          //   Padding(
          //     key: ValueKey(tile),
          //     padding: const EdgeInsets.all(8.0),
          //     child: ListTile(
          //       title: Text(
          //         tile.toString(),
          //       ),
          //     ),
          //   )

          //OR Using .map and spread to loop through
          ...myTiles.map((data) {
            return Padding(
              key: ValueKey(data),
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(data),
              ),
            );
          })
        ],
      ),
    );
  }
}

//import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of tiles
  final List myTiles = [
    'A',
    'B',
    'C',
    'D',
  ];

  // reorder method
  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      // this adjustment is needed when moving down the list
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      // get the tile we are moving
      final String tile = myTiles.removeAt(oldIndex);
      // place the tile in new position
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Re-Orderable ListView")),
      body: ReorderableListView(
        padding: const EdgeInsets.all(10),
        children: [
          for (final tile in myTiles)
            Padding(
              key: ValueKey(tile),
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[200],
                child: ListTile(
                  title: Text(tile.toString()),
                ),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          updateMyTiles(oldIndex, newIndex);
        },
      ),
    );
  }
}
