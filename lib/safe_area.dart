// import 'package:flutter/material.dart';

// class SafeeArea extends StatelessWidget {
//   const SafeeArea({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       //left: false,
//       //right: false,
//       top: false,
//       bottom: false,
//       minimum: const EdgeInsets.all(80),
//       maintainBottomViewPadding: true,

//       child: Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         //   title: const Text("Safe Area"),
//         // ),
//         body: ListView(
//           children: List.generate(
//             100,
//             (index) => const Text('This text is obscured'),
//           ),
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
///
//Snippet 2
import 'package:flutter/material.dart';

class SafeeArea extends StatelessWidget {
  const SafeeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //left: false,
      //right: false,
      //top: false,
      bottom: false, //removes bottom padding
      //minimum: const EdgeInsets.symmetric(horizontal: 20), //safe Area padding
      // maintainBottomViewPadding: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Safe Area"),
        ),
        body: ListView(
          children: List.generate(
            100,
            (index) => const Text('This text is obscured'),
          ),
        ),
      ),
    );
  }
}
