import 'package:flutter/material.dart';

class onlineHelp extends StatelessWidget {
  const onlineHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            'Лінія підтримки',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leading: Icon(null),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            color: Colors.white54,
          )
        ],
      ),
      body: Center(
        child: Text(
          'Мы готовы вам помочь',
        ),
      ),
    );
  }
}
