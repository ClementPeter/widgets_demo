//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Peter'),
            accountEmail: Text('cp@gmail.com'),
          ),
          Expanded(
              child: Container(
            color: Colors.grey,
          ))
        ],
      ),
    );
  }
}
