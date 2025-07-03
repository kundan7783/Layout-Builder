import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    double heightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: myDrawer,
      appBar: AppBar(
        title: Text("Tab Screen",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              flex: 65,
              child: ListView(
                children: [
                  Container(
                    width: widthScreen ,
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
                width: widthScreen,
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
