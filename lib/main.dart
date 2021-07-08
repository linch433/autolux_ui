import 'package:autolux_ui/assets/screens/aboutCompany/aboutCompany.dart';
import 'package:autolux_ui/assets/screens/businessClient.dart';
import 'package:autolux_ui/assets/screens/contacts.dart';
import 'package:autolux_ui/assets/screens/department.dart';
import 'package:autolux_ui/assets/screens/mainScreen.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/screens/privateClient.dart';
import 'package:autolux_ui/assets/screens/services.dart';
import 'package:autolux_ui/assets/screens/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AutoLux UI template',
      initialRoute: '/',
      routes: {
        '/': (context) => mainScreen(),
        '/aboutCompany': (context) => aboutCompany(),
        '/contact': (context) => contact(),
        '/businessClient': (context) => businessClient(),
        '/department': (context) => department(),
        '/news': (context) => news(),
        '/privateClient': (context) => privateClient(),
        '/services': (context) => services(),
        '/onlineHelp': (context) =>onlineHelp(),
      },
    ),
  );
}

