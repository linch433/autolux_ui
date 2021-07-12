import 'package:autolux_ui/assets/screens/aboutCompany/areaWithButtons.dart';
import 'package:autolux_ui/assets/screens/mainScreen/searchBar.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/widget/drawerMenu.dart';
import 'package:autolux_ui/assets/widget/pageTitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class servicesAndTariffs extends StatelessWidget {
  const servicesAndTariffs({Key? key}) : super(key: key);

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
            pageTitle(TitlePage: 'Тарифы и услуги'),
            mainButtonAreaMenu(),
            Divider(
              color: Colors.black,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 58,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          border: Border.all(width: 1, color: Colors.black54),
                        ),
                        child: Text(
                          'ПЕРЕВОЗКА И ХРАНЕНИЕ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        width: MediaQuery.of(context).size.width,
                        height: 700,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54, width: 1),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: new TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                children: [
                                  new TextSpan(
                                    text: 'Ценный груз\n\n\n',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  new TextSpan(
                                    text: 'Условия применения\n\n',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  new TextSpan(
                                    text: 'Груз, который имеет особую ценность для отправителя'
                                  ),
                                  new TextSpan(
                                    text: ' и упакованый в фирменный номерной сейф-пакет, представленный Исполнителем\n\n',
                                  ),
                                  new TextSpan(
                                    text: 'Процент от объявленной ценнтости\n\n',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  new TextSpan(
                                    text: '2%\n\n',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  new TextSpan(
                                      text: 'но не менее - 1 грн\n\n'
                                  ),
                                  new TextSpan(
                                    text: 'Сбор за вес и объём\n\n',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  new TextSpan(
                                    text: '27 грн\n\n',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              margin: EdgeInsets.only(bottom: 10),
                              child: Divider(color: Colors.black, thickness: 1.5,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.money_dollar_circle, color: Colors.grey,),
                                Text('\t\tДокументы', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(color: Colors.black, thickness: 1.5,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.car_detailed, color: Colors.grey,),
                                Text('\t\tШины и диски', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(color: Colors.black, thickness: 1.5,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.cube_box, color: Colors.grey,),
                                Text('\t\tТарифный вес', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 60),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Divider(color: Colors.black,thickness: 1.5,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 58,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          border: Border.all(width: 1, color: Colors.black54),
                        ),
                        child: Text(
                          'АДРЕСНАЯ ДОСТАВКА',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 58,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          border: Border.all(width: 1, color: Colors.black54),
                        ),
                        child: Text(
                          'ДОПОЛНИТЕЛЬНЫЕ УСЛУГИ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 58,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          border: Border.all(width: 1, color: Colors.black54),
                        ),
                        child: Text(
                          'УПАКОВКА',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
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
