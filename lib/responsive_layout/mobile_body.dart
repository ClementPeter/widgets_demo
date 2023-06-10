import 'package:flutter/material.dart';

//Mobile UI Demo
class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("M O B I L E"),
      ),
      body: Column(
        children: [
          //youtube video
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 250,
                color: Colors.deepPurple[400],
              ),
            ),
          ),

          //comment section
          ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.deepPurple[300],
                );
              })
        ],
      ),
    );
  }
}
