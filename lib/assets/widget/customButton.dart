import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.onPressed, required this.title, required this.icon});

  final GestureTapCallback onPressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: Size(double.infinity, 146),
          shadowColor: Colors.grey[600],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: onPressed,
        child: Center(
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.deepPurple, fontSize: 15),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



