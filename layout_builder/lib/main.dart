import 'package:flutter/material.dart';
import 'package:layout_builder/desktop.dart';
import 'package:layout_builder/main_layout.dart';
import 'package:layout_builder/mobile.dart';
import 'package:layout_builder/tab.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLayout(mobile: MobileScreen(), tab: TabScreen(), desktop: DesktopScreen()),
    );
  }
}
