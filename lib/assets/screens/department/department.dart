import 'package:autolux_ui/assets/screens/aboutCompany/areaWithButtons.dart';
import 'package:autolux_ui/assets/screens/department/departmentText.dart';
import 'package:autolux_ui/assets/screens/department/departmentDropDownList.dart';
import 'package:autolux_ui/assets/screens/mainScreen/searchBar.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/widget/drawerMenu.dart';
import 'package:autolux_ui/assets/widget/pageTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class department extends StatelessWidget {
  const department({Key? key}) : super(key: key);

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
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.only(left: 3.0),
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
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
            pageTitle(TitlePage: 'Відділення'),
            mainButtonAreaMenu,
            Divider(
              color: Colors.black,
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.purple, width: 1.5),
                ),
                child: IconButton(
                  iconSize: 33,
                  tooltip: 'Google Maps',
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => departmentText(),
                      ),
                    );
                  },
                  icon: Icon(Icons.pin_drop_outlined),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple, width: 1.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(child: dropDownButton())),
            SizedBox(
              height: 100,
            )
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
