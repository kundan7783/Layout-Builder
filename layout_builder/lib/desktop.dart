import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    double heightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Screen",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 8,
          children: [
            Expanded(flex: 25, child: myDrawer),
            Expanded(
              flex: 65,
              child: ListView(
                children: [
                  Container(
                    width: widthScreen,
                    height: heightScreen * 0.35,
                    color: Colors.pink,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.symmetric(vertical:5),
                        child: Container(
                          width: widthScreen,
                          height: 70,
                          color: Colors.green,
                        ),
                      );
                    },)
                ],
              ),
            ),
            Expanded(
              flex: 35,
              child: Container(
                width: widthScreen * 0.35,
                height: heightScreen,
                color: CupertinoColors.activeGreen,
              ),
            )
          ],
        ),
      ),
    );
  }
}
