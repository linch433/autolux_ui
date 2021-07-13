import 'package:autolux_ui/assets/screens/calculator/calculator.dart';
import 'package:autolux_ui/assets/screens/callCourier.dart';
import 'package:autolux_ui/assets/screens/cargoTracking.dart';
import 'package:autolux_ui/assets/screens/contacts/contacts.dart';
import 'package:autolux_ui/assets/screens/department/department.dart';
import 'package:autolux_ui/assets/screens/servicesTariffsScreen.dart';
import 'package:flutter/material.dart';
import 'package:autolux_ui/assets/widget/customButton.dart';

class mainButtonMenu extends StatelessWidget {
  const mainButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => department()));},
                      title: 'Відділення',
                      icon: Icons.location_on_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => servicesAndTariffs()));},
                      title: 'Тарифи',
                      icon: Icons.account_balance_wallet_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => callCourier()));},
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
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => cargoTracking()));},
                      title: 'Відстеження вантажу',
                      icon: Icons.assistant_photo_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Calculator()));},
                      title: 'Розрахунок вартості',
                      icon: Icons.calculate_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => contacts()));},
                      title: 'Інформаційна служба',
                      icon: Icons.mail_outline_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}