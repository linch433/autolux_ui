import 'package:flutter/material.dart';
import 'package:autolux_ui/assets/widget/customButton.dart';

Widget mainButtonMenu = Container(
  child: Center(
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(
                  onPressed: () {},
                  title: 'Віділення',
                  icon: Icons.location_on_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Тарифи',
                  icon: Icons.account_balance_wallet_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Виклик кур\'єра',
                  icon: Icons.accessibility_new_outlined),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(
                  onPressed: () {},
                  title: 'Відстеження вантажу',
                  icon: Icons.assistant_photo_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Розрахунок вартості',
                  icon: Icons.calculate_outlined),
              MyButton(
                  onPressed: () {},
                  title: 'Інформаційна служба',
                  icon: Icons.mail_outline_outlined),
            ],
          ),
        ),
      ],
    ),
  ),
);
