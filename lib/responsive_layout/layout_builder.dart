import 'package:flutter/material.dart';
import 'package:widgets_demo/responsive_layout/dimension.dart';

//Using Layout builder to build for different layout
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < mobileWidth) {
        return mobileBody;
      } else if (constraint.maxWidth <= desktopWidth &&
          constraint.maxWidth >= mobileWidth) {
        return tabletBody;
      } else {
        return desktopBody;
      }
    });
  }
}
