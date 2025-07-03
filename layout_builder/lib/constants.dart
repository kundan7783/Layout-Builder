

import 'package:flutter/material.dart';

var myDrawer=Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 30),
            ),
            SizedBox(height: 10),
            Text(
              "Kundan Kumar Singh",
              style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
            ),
            Text(
              "7783065335",
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
      ListTile(
        leading: Icon(Icons.account_circle_outlined),
        title: Text('My Profile'),
      ),
      ListTile(
        leading: Icon(Icons.account_balance_wallet_outlined),
        title: Text('Wallet'),

      ),
      Container(width:double.infinity,height: 1, color: Colors.grey,),
      ListTile(
        leading: Icon(Icons.group),
        title: Text('New Group'),
      ),ListTile(
        leading: Icon(Icons.person),
        title: Text('Contacts'),
      ),ListTile(
        leading: Icon(Icons.call),
        title: Text('Calls'),
      ),ListTile(
        leading: Icon(Icons.settings),
        title: Text('Setting'),
      ),ListTile(
        leading: Icon(Icons.person_add_outlined),
        title: Text('Invite Friends'),
      ),
      Container(width:double.infinity,height: 1, color: Colors.grey,),
    ],
  ),
);