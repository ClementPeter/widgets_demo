import 'package:flutter/material.dart';

class Flexibles extends StatelessWidget {
  const Flexibles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          //The child is forced to fill the available space.
          fit: FlexFit.tight,
          flex: 2,
          child: Container(color: Colors.black),
        ),
        Flexible(child: Container(color: Colors.blue)),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 4,
                //The child can be at most as large as the available space (but is allowed to be smaller).
                fit: FlexFit.loose,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Flexible(child: Container(color: Colors.black)),
              Flexible(child: Container(color: Colors.red)),
              Flexible(child: Container(color: Colors.green)),
              Flexible(child: Container(color: Colors.blue)),
            ],
          ),
        ),
        Expanded(child: Container(color: Colors.blue)),
        Expanded(child: Container(color: Colors.black)),
        Expanded(
          child: Row(
            children: [
              Flexible(child: Container(color: Colors.black)),
              Flexible(child: Container(color: Colors.red)),
              Flexible(child: Container(color: Colors.green)),
              Flexible(child: Container(color: Colors.blue)),
            ],
          ),
        ),
      ],
    );
  }
}
