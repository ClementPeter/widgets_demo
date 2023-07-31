// import 'package:flutter/material.dart';

// //Desktop UI Demo - Video section, comment section and recommend user section
// class MyDesktopBody extends StatelessWidget {
//   const MyDesktopBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[200],
//       appBar: AppBar(
//         title: const Text("D E S K T O P"),
//       ),
//       body: Row(
//         children: [
//           Column(
//             children: [
//               //youtube video
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   child: Container(
//                     height: 250,
//                     color: Colors.deepPurple[400],
//                   ),
//                 ),
//               ),

//               //comment section
//               ListView.builder(
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: 100,
//                       color: Colors.deepPurple[300],
//                     );
//                   })
//             ],
//           ),
//           // Expanded(
//           //   child: Padding(
//           //     padding: const EdgeInsets.all(8.0),
//           //     child: Container(
//           //       height: MediaQuery.of(context).size.width,
//           //       color: Colors.deepPurple[400],
//           //     ),
//           //   ),
//           // )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

//Desktop UI Demo - Video section and comment section
class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("D E S K T O P"),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //youtube video
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 250,
                        color: Colors.deepPurple[400],
                        child: Center(
                          child: Text(
                            "$width",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //comment section
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          child: Container(
                            height: 100,
                            color: Colors.deepPurple[300],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          //Side bar section
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      height: 80,
                      color: Colors.deepPurple[300],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
