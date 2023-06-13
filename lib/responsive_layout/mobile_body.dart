import 'package:flutter/material.dart';

//Mobile UI Demo - Video section and comment section
class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text("M O B I L E"),
      ),
      body: Column(
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
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 100,
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
