import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ButtonArea extends StatelessWidget {
  ButtonArea({required this.onPressed, required this.title, required this.icon});

  final GestureTapCallback onPressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(140, 90),
        ),
        onPressed: onPressed,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16,),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



