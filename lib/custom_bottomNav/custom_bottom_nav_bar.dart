// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BaseView extends StatefulWidget {
//   const BaseView({super.key});

//   @override
//   State<BaseView> createState() => _BaseViewState();
// }

// class _BaseViewState extends State<BaseView> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: const [
//           Center(
//             child: Text('Home'),
//           ),
//           Center(
//             child: Text('Checkmark'),
//           ),
//           Center(
//             child: Text('Profile'),
//           ),
//         ],
//       ),
//       floatingActionButton: currentIndex == 0
//           ? FloatingActionButton(
//               onPressed: () {},
//               child: const Icon(CupertinoIcons.plus, size: 30),
//             )
//           : null,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: CustomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (index) {
//           currentIndex = index;
//         },
//         buttonItem: [
//           CustomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: '',
//           ),
//           CustomNavigationBarItem(
//             icon: Icon(Icons.check),
//             label: '',
//           ),
//           CustomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: '',
//           )
//         ],
//       ),
//     );
//   }
// }

// //
// class CustomNavigationBar extends StatelessWidget {
//   const CustomNavigationBar({
//     super.key,
//     this.onTap,
//     this.currentIndex = 0,
//     this.activeColor,
//     this.inactiveColor,
//     this.selectedLabelTextStyle,
//     this.unselectedLabelTextStyle,
//     this.showLabel,
//     this.elevation = 10,
//     required this.buttonItem,
//   });

//   final ValueChanged<int>? onTap;
//   final int currentIndex;
//   final Color? activeColor;
//   final Color? inactiveColor;
//   final TextStyle? selectedLabelTextStyle;
//   final TextStyle? unselectedLabelTextStyle;
//   final bool? showLabel;
//   final double elevation;
//   final List<CustomNavigationBarItem> buttonItem;

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       height: 50,
//       //color: Colors.green,
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 5,
//       elevation: elevation,
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 8),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: List.generate(buttonItem.length, (index) {
//             final item = buttonItem[index];
//             return IconButton(
//               //padding: EdgeInsets.zero,
//               //child: item.icon,
//               onPressed: () {
//                 onTap?.call(index);
//               },
//               icon: item.icon,
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// //structure the custom BottomNavBar items
// class CustomNavigationBarItem {
//   CustomNavigationBarItem({required this.icon, required this.label});
//   final Widget icon;
//   final String label;
// }

// class Tile extends StatelessWidget {
//   const Tile({
//     super.key,
//     required this.icon,
//     this.activeIcon,
//     required this.showLabel,
//     required this.isActive,
//     this.activeColor,
//     this.inactiveColor,
//     required this.tooltipText,
//   });

//   final Widget icon;
//   final Widget? activeIcon;
//   final bool showLabel;
//   final bool isActive;
//   final Color? activeColor;
//   final Color? inactiveColor;
//   final String tooltipText;

//   @override
//   Widget build(BuildContext context) {
//     return Tooltip(
//       message: tooltipText,
//       child: Padding(
//         padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 18),
//         child: isActive ? activeIcon ?? icon : icon,
//       ),
//     );
//   }
// }

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
///
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light().copyWith(
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: BaseView(),
//     );
//   }
// }

class BaseView extends StatefulWidget {
  const BaseView({super.key});
  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Center(
            child: Text('Home'),
          ),
          // Center(
          //   child: Text('Checkmark'),
          // ),
          Center(
            child: Text('Profile'),
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 0
          ? FloatingActionButton(
              //shape: CircularNotchedRectangle(),
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.plus,
                size: 40,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavigationBar(
        inactiveColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          CustomNavigationBarItem(
            tooltipText: '',
            icon: Icon(Icons.home),
          ),
          // CustomNavigationBarItem(
          //   tooltipText: '',
          //   icon: Icon(Icons.check),
          // ),
          CustomNavigationBarItem(
            tooltipText: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    this.activeColor,
    this.inactiveColor,
    this.selectedLabelTextStyle,
    this.unselectedLabelTextStyle,
    this.onTap,
    this.showLabel = true,
    required this.items,
    this.currentIndex = 0,
    this.elevation = 10,
  });
  final ValueChanged<int>? onTap;
  final int currentIndex;
  final Color? activeColor;
  final Color? inactiveColor;
  final TextStyle? selectedLabelTextStyle;
  final TextStyle? unselectedLabelTextStyle;
  final bool showLabel;
  final double elevation;
  final List<CustomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          return CupertinoButton(
            onPressed: () {
              onTap?.call(index);
            },
            padding: EdgeInsets.zero,
            child: _Tile(
              tooltipText: item.tooltipText,
              icon: item.icon,
              showLabel: showLabel,
              isActive: index == currentIndex,
              activeColor: activeColor,
              activeIcon: item.activeIcon,
              inactiveColor: inactiveColor,
            ),
          );
        }),
      ),
    );
  }
}

class CustomNavigationBarItem {
  const CustomNavigationBarItem({
    required this.icon,
    required this.tooltipText,
    this.activeIcon,
  });

  final Widget icon;
  final Widget? activeIcon;
  final String tooltipText;
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.icon,
    this.activeIcon,
    required this.showLabel,
    required this.isActive,
    this.activeColor,
    this.inactiveColor,
    required this.tooltipText,
  });

  final Widget icon;
  final Widget? activeIcon;
  final bool showLabel;
  final bool isActive;
  final Color? activeColor;
  final Color? inactiveColor;
  final String tooltipText;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipText,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 18),
        child: isActive ? activeIcon ?? icon : icon,
      ),
      //decoration: BoxDecoration(),
    );
    //return Icon(icon)
  }
}
