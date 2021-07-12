import 'package:autolux_ui/assets/screens/aboutCompany/areaWithButtons.dart';
import 'package:autolux_ui/assets/screens/mainScreen/searchBar.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/widget/drawerMenu.dart';
import 'package:autolux_ui/assets/widget/pageTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class cargoTracking extends StatelessWidget {
  const cargoTracking({Key? key}) : super(key: key);

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
            pageTitle(TitlePage: 'Відстеження вантажу'),
            mainButtonAreaMenu(),
            Divider(
              color: Colors.black,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 10, right: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey, // set border color
                      width: 2.0,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(30.0)), // set rounded corner radius
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Введіть номер',
                      suffixIcon: CircleAvatar(backgroundColor: Colors.red, child: Icon(Icons.search, size: 30, color: Colors.white,)),
                      icon: Icon(
                        Icons.archive_outlined,
                        color: Colors.grey[400],
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Divider(color: Colors.black),
                SizedBox(
                  height: 350,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset('lib/images/title.jpg'),),
                SizedBox(
                  height: 50,
                  child: Container(
                  ),
                )
              ],
            ),
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
