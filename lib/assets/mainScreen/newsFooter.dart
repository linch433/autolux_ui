import 'package:flutter/material.dart';

Widget newsFooter = Container(
  padding: EdgeInsets.all(10),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Новини', style: TextStyle( fontWeight: FontWeight.w400, fontSize: 30 ),),
        ),
        Text('Змінено місце розташування відділення компанії "Автолюкс Експрес Пошта" у м. Черкасах.'),
        Container(
          height: 35,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          color: Colors.grey[300],
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Детальніше', style: TextStyle(fontWeight: FontWeight.w400),),
                ),
            ],
          ),
          ),
        Text('Відкрилось нове відділення "Автолюкс Екпрес Пошта" у м. Ковелі.'),
        Container(
          height: 35,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          color: Colors.grey[300],
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Детальніше', style: TextStyle(fontWeight: FontWeight.w400),),
              ),
            ],
          ),
        ),
        Text('27 та 28 червня 2021р. у всіх відділеннях "Автолюкс Експрес Пошта" - вихідні дні.'),
        Container(
          width: double.infinity,
          height: 35,
          margin: EdgeInsets.symmetric(vertical: 10),
          color: Colors.grey[300],
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Детальніше', style: TextStyle(fontWeight: FontWeight.w400),),
              ),
            ],
          ),
        ),
      ],
    ),
);