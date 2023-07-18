import 'package:flutter/material.dart';

class BtmHome extends StatelessWidget {
  const BtmHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Card(
        child: Center(
          child: Text('Home UI'),
        ),
      ),
    );
  }
}
