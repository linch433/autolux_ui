import 'package:flutter/material.dart';

Widget mainText = Column(
  children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.grey, // set border color
            width: 1.0,
          ),
        ),
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
