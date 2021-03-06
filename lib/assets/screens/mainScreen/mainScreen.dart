import 'package:autolux_ui/assets/screens/mainScreen/mainButtonMenu.dart';
import 'package:autolux_ui/assets/screens/mainScreen/mainText.dart';
import 'package:autolux_ui/assets/screens/mainScreen/newsFooter.dart';
import 'package:autolux_ui/assets/screens/mainScreen/searchBar.dart';
import 'package:autolux_ui/assets/widget/drawerMenu.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/images/mainTitle.jpg', width: 200,),
        // title: Text(
        //   'АВТОЛЮКС \nЕКСПРЕС ПОШТА',
        //   style: TextStyle(
        //     color: Colors.purple,
        //     fontWeight: FontWeight.w600,
        //     fontSize: 17,
        //   ),
        // ),
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.only(left: 3.0),
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              color: Colors.deepOrange,
              iconSize: 37,
            ),
          );
        }),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              color: Colors.purple,
              iconSize: 37,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
      drawer: navigationDrawerWidget(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
            ),
            // Parts of a Screen
            searchBar,
            mainText,
            mainButtonMenu(),
            newsFooter,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => onlineHelp()));
          // Navigator.pushReplacementNamed(context, '/onlineHelp');
        },
        tooltip: 'Online message/help',
        child: Icon(
          Icons.mail,
          size: 25,
        ),
      ),
    );
  }
}
