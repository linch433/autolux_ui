import 'package:autolux_ui/assets/mainScreen/mainButtonMenu.dart';
import 'package:autolux_ui/assets/mainScreen/mainText.dart';
import 'package:autolux_ui/assets/mainScreen/newsFooter.dart';
import 'package:autolux_ui/assets/mainScreen/searchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'АВТОЛЮКС \nЕКСПРЕС ПОШТА',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            padding: EdgeInsets.only(left: 13.0),
            icon: const Icon(Icons.home),
            onPressed: () {},
            color: Colors.deepOrange,
            iconSize: 37,
          );
        }),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            color: Colors.purple,
            iconSize: 37,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
            ),
            // Parts of a Screen
            searchBar,
            mainText,
            mainButtonMenu,
            newsFooter,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Online message/help',
        child: Icon(Icons.mail),
      ),
    );
  }
}
