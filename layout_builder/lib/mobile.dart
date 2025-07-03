import 'package:flutter/material.dart';

import 'constants.dart';



class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    double heightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
     drawer: myDrawer,
      appBar: AppBar(
        title: Text("Phone Screen",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
    );
  }
}
