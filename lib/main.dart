import 'package:autolux_ui/assets/screens/aboutCompany/aboutCompany.dart';
import 'package:autolux_ui/assets/screens/businessClient/businessClient.dart';
import 'package:autolux_ui/assets/screens/contacts/contacts.dart';
import 'package:autolux_ui/assets/screens/department/department.dart';
import 'package:autolux_ui/assets/screens/mainScreen/mainScreen.dart';
import 'package:autolux_ui/assets/screens/onlineHelp.dart';
import 'package:autolux_ui/assets/screens/privateClient/privateClient.dart';
import 'package:autolux_ui/assets/screens/servicesScreen/services.dart';
import 'package:autolux_ui/assets/screens/news.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'SourceSansPro'),
      title: 'AutoLux UI template',
      initialRoute: '/',
      routes: {
        '/': (context) => mainScreen(),
        '/aboutCompany': (context) => aboutCompany(),
        '/contact': (context) => contacts(),
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

