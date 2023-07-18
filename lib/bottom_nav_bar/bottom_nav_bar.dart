import 'package:flutter/material.dart';
import 'package:widgets_demo/bottom_nav_bar/btm_homeUI.dart';
import 'package:widgets_demo/bottom_nav_bar/btm_locationUI.dart';
import 'package:widgets_demo/bottom_nav_bar/btm_viewUI.dart';

class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  //using text as contents
  // List<Widget> widgetsContents = const [
  //   Text('Home'),
  //   Text('Views'),
  //   Text('Location'),
  //   Text('Person'),
  //   Text('Settings'),
  //   Text('Log  Out'),
  // ];

  //using screens as contents
  List<Widget> widgetsContents = const [
    BtmHome(),
    BtmView(),
    BtmLocation(),
  ];

  int currentIndex = 0; //controls the item/page to be shown

  int selectedItemIndex = 0; //used to control which BNB Item is selected

  void onItemTap(selectedItemIndex) {
    setState(() {
      //current Index gets updated here for the UI
      currentIndex = selectedItemIndex;

      print("selected Item Index: $selectedItemIndex");
      print("current Index: $currentIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: widgetsContents.elementAt(currentIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          print("bottom bar index: $index");
          onItemTap(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.view_agenda), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          // BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label: ''),
        ],
      ),
    );
  }
}
