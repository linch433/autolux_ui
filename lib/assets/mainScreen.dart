import 'package:autolux_ui/assets/widget/customButton.dart';
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
          ],
        ),
      ),
    );
  }
}

// Search Bar
Widget searchBar = Container(
  margin: EdgeInsets.only(bottom: 40, left: 10, right: 10, top: 10),
  padding: EdgeInsets.only(left: 10),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.grey, // set border color
      width: 2.0,
    ),
    borderRadius:
        BorderRadius.all(Radius.circular(25.0)), // set rounded corner radius
  ),
  child: TextField(
    decoration: InputDecoration(
      icon: Icon(
        Icons.archive_outlined,
        color: Colors.grey[400],
      ),
      border: InputBorder.none,
    ),
  ),
);

// Main Text in the middle of a screen
Widget mainText = Column(
  children: [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.grey[300],
      child: Text(
        'Доставка вантажів та документів',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 35),
      ),
    ),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.deepPurple,
      child: Column(
        children: [
          Text(
            'Нові підрозділи "Автолюкс Експрес Пошта": '
            '\n- м. Бориспіль, вул. Привокзальна 21, '
            '\n- м. Вінниця, вул. М. Ващука 14, '
            '\n- м. Гостомель, вул. Свято-Покровського 108-а,'
            '\n- м. Ізмаїль, вул. Короленко 45,'
            '\n- м. Каховка, вул. Ярослава Мудрого 18,'
            '\n- м. Ковель, провулок В. Кияна 9,'
            '\n- м. Новоград-Волинський, вул. Героїв Майдану  150,'
            '\n- м. Рівне, вул. Дворецького  123-а,'
            '\n- м. Хмельницький, вул. Миру 69,'
            '\n Ласкаво просимо! ',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange, width: 2.0),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ДЕТАЛЬНІШЕ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ButtonStyle(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  ],
);

Widget mainButtonMenu = Container(
  child: Center(
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(
                  onPressed: () {},
                  title: 'Віділення',
                  icon: Icons.location_on_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Тарифи',
                  icon: Icons.account_balance_wallet_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Виклик кур\'єра',
                  icon: Icons.accessibility_new_outlined),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(
                  onPressed: () {},
                  title: 'Відстеження вантажу',
                  icon: Icons.assistant_photo_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Розрахунок вартості',
                  icon: Icons.calculate_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Інформаційна служба',
                  icon: Icons.mail_outline_outlined),
            ],
          ),
        ),
      ],
    ),
  ),
);
