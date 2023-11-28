import 'package:flutter/material.dart';

class Expandeed extends StatelessWidget {
  const Expandeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          ),
          //Section 2
          const Text("Expanded in row "),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                //flex: 1, //default
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          const Text("Expanded in column"),
          const SizedBox(height: 10),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
