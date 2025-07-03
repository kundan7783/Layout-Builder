import 'package:flutter/material.dart';
import 'package:layout_builder/desktop.dart';
import 'package:layout_builder/mobile.dart';
import 'package:layout_builder/tab.dart';

class MainLayout extends StatelessWidget {
  Widget mobile, tab, desktop;

  MainLayout({
    super.key,
    required this.mobile,
    required this.tab,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = constraints.maxWidth;
      if (width < 600) {
          return MobileScreen();
      } else if (width >= 600 && width < 1024) {
          return TabScreen();
      } else {
          return DesktopScreen();
      }
    },);
  }
}
