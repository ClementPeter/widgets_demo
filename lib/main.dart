import 'package:flutter/material.dart';
import 'package:widgets_demo/badges.dart';
import 'package:widgets_demo/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:widgets_demo/custom_bottomNav/custom_bottom_nav_bar.dart';
import 'package:widgets_demo/expanded.dart';
import 'package:widgets_demo/flexible.dart';
import 'package:widgets_demo/responsive_layout/desktop_body.dart';
import 'package:widgets_demo/responsive_layout/layout_builder.dart';
import 'package:widgets_demo/reorderable_list.dart';
import 'package:widgets_demo/responsive_layout/mobile_body.dart';
import 'package:widgets_demo/responsive_layout/tablet_body.dart';
import 'package:widgets_demo/safe_area.dart';
import 'package:widgets_demo/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        useMaterial3: true,
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //   shape: CircularNotchedRectangle(),
        // ),
      ),
      home: const MyHomePage(title: 'Widget Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SafeeArea(),
                  ),
                );
              },
              child: const Text("Safe Area"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Expandeed(),
                  ),
                );
              },
              child: const Text("Expanded"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Flexibles(),
                  ),
                );
              },
              child: const Text("Flexible"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Wrapp(),
                  ),
                );
              },
              child: const Text("Wrap"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AutoReorderableListPage(),
                    //builder: (context) => const ReorderableListPage(),
                  ),
                );
              },
              child: const Text("Reorderable List"),
            ),
            //const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResponsiveLayout(
                      mobileBody: MyMobileBody(),
                      desktopBody: const MyDesktopBody(),
                      tabletBody: MyTabletBody(),
                    ),
                  ),
                );
              },
              child: const Text("Layout Builder"),
            ),
            // const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBarWidget(),
                  ),
                );
              },
              child: const Text("Bottom Navigation Bar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseView(),
                  ),
                );
              },
              child: const Text("Custom Bottom Navigation Bar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Badges(),
                  ),
                );
              },
              child: const Text("Badges"),
            ),
          ],
        ),
      ),
    );
  }
}
