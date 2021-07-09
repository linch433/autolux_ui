import 'package:flutter/material.dart';

class onlineHelp extends StatelessWidget {
  const onlineHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                height: size.height * .125,
                color: Colors.lightBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SafeArea(
                      child: Text(
                        'Лінія підтримки',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    SafeArea(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Введите сообщение...',
                        icon: Icon(Icons.alternate_email_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
            ],
          )
        ],
      ),
    );
  }
}
