import 'package:flutter/material.dart';

Widget buildMenuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  final color = Colors.purple;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color, fontSize: 16),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

class navigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Colors.grey[100],
          child: ListView(
            children: [
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                  text: 'Про компанію',
                  icon: Icons.apartment,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/aboutCompany')),
              buildMenuItem(
                  text: 'Бізнес-клієнтам',
                  icon: Icons.people,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/businessClient')),
              buildMenuItem(
                  text: 'Приватним клієнтам',
                  icon: Icons.privacy_tip,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/privateClient')),
              buildMenuItem(
                  text: 'Новини',
                  icon: Icons.web,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/news')),
              buildMenuItem(
                  text: 'Відділення',
                  icon: Icons.location_on_outlined,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/department')),
              buildMenuItem(
                  text: 'Послуги',
                  icon: Icons.shopping_cart,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/services')),
              buildMenuItem(
                  text: 'Контакти',
                  icon: Icons.contact_support,
                  onClicked: () => Navigator.pushReplacementNamed(context, '/contact')),
            ],
          )),
    );
  }
}
