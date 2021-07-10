import 'package:autolux_ui/assets/screens/aboutCompany/areaWithButtons.dart';
import 'package:autolux_ui/assets/screens/mainScreen/searchBar.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/widget/drawerMenu.dart';
import 'package:autolux_ui/assets/widget/pageTitle.dart';
import 'package:flutter/material.dart';

class callCourier extends StatelessWidget {
  const callCourier({Key? key}) : super(key: key);

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
            pageTitle(TitlePage: 'Виклик кур\'єра'),
            mainButtonAreaMenu(),
            Divider(
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: new TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        new TextSpan(
                          text: 'В',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.deepPurple),
                        ),
                        new TextSpan(
                            text:
                                'иклик кур\'єра\n',
                            style: new TextStyle(
                                color: Colors.deepPurple, fontSize: 20)),
                        new TextSpan(
                          text: 'Просимо вибачення сервіс тимчасово не працює, зробити заявку Ви можете зателефонувавши на '
                        ),
                        new TextSpan(
                          text: '0800-33-59-29',
                          style: TextStyle(fontWeight: FontWeight.bold, ),

                        )
                      ],
                    ),
                  ),
                ),
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
