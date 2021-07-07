import 'package:flutter/material.dart';

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