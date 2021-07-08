import 'package:flutter/material.dart';

class pageTitle extends StatelessWidget {
  pageTitle({required this.TitlePage});
  final String TitlePage;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Text(TitlePage,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
