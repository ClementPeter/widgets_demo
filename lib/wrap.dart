// import 'package:flutter/material.dart';

// class Wrapp extends StatelessWidget {
//   const Wrapp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Wrap"),
//       ),
//       body: Container(
//         color: Colors.yellow,
//         width: double.infinity,
//         //Using Wrap instead of row
//         child: Wrap(
//           direction: Axis.horizontal,
//           // direction: Axis.vertical,
//           //alignment: WrapAlignment.start,
//           spacing: 10.0, // gap between adjacent chips
//           runSpacing: 25.0, // gap between lines
//           //runAlignment: WrapAlignment.end,
//           //crossAxisAlignment: WrapCrossAlignment.end,
//           verticalDirection: VerticalDirection.down,
//           children: [
//             Container(
//               color: Colors.red,
//               height: 50,
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Container(
//               color: Colors.green,
//               height: 50,
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Container(
//               color: Colors.blue,
//               height: 50,
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Container(
//               color: Colors.pink,
//               height: 50,
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Container(
//               color: Colors.blue,
//               height: 50,
//               width: 100,
//             ),
//             const SizedBox(width: 10),
//             Container(
//               color: Colors.pink,
//               height: 50,
//               width: 100,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
///Snippet 2
///Wrap is used to allow exccess of a widget(s) to overlap to the next row or column depending
///on the orientation
import 'package:flutter/material.dart';

class Wrapp extends StatelessWidget {
  const Wrapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Wrap"),
      ),
      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        //Using Wrap instead of row
        child: Wrap(
          direction: Axis.horizontal,
          // direction: Axis.vertical,
          //alignment: WrapAlignment.start,
          spacing: 10.0, // gap between adjacent chips
          runSpacing: 25.0, // gap between lines
          //runAlignment: WrapAlignment.end,
          //crossAxisAlignment: WrapCrossAlignment.end,
          verticalDirection: VerticalDirection.down,
          children: [
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900),
              label: const Text('Clinton'),
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: 100,
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.green,
              height: 50,
              width: 100,
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: const Text(
                  'H',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: const Text('Hamilton'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: const Text(
                  'L',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: const Text('Lafayette'),
            ),
            Chip(
              avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('M')),
              label: const Text('Mulligan'),
            ),
            // Chip(
            //   avatar: CircleAvatar(
            //       backgroundColor: Colors.blue.shade900,
            //       child: const Text('L')),
            //   label: const Text('Laurens'),
            // ),
          ],
        ),
      ),
    );
  }
}
