import 'package:flutter/material.dart';

class BtmView extends StatelessWidget {
  const BtmView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Card(
        child: Center(
          child: Text('View UI'),
        ),
      ),
    );
  }
}
