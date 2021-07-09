import 'package:autolux_ui/assets/screens/aboutCompany/aboutCompany.dart';
import 'package:autolux_ui/assets/screens/businessClient/businessClient.dart';
import 'package:autolux_ui/assets/screens/contacts.dart';
import 'package:autolux_ui/assets/screens/department/department.dart';
import 'package:autolux_ui/assets/screens/news.dart';
import 'package:autolux_ui/assets/screens/privateClient/privateClient.dart';
import 'package:autolux_ui/assets/screens/services.dart';
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
                  onClicked: () => selectedItem(context, 0)),
              buildMenuItem(
                  text: 'Бізнес-клієнтам',
                  icon: Icons.people,
                  onClicked: () => selectedItem(context, 1)),
              buildMenuItem(
                  text: 'Приватним клієнтам',
                  icon: Icons.privacy_tip,
                  onClicked: () => selectedItem(context, 2)),
              buildMenuItem(
                  text: 'Новини',
                  icon: Icons.web,
                  onClicked: () => selectedItem(context, 3)),
              buildMenuItem(
                  text: 'Відділення',
                  icon: Icons.location_on_outlined,
                  onClicked: () => selectedItem(context, 4)),
              buildMenuItem(
                  text: 'Послуги',
                  icon: Icons.shopping_cart,
                  onClicked: () => selectedItem(context, 5)),
              buildMenuItem(
                  text: 'Контакти',
                  icon: Icons.contact_support,
                  onClicked: () => selectedItem(context, 6)),
            ],
          )),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => aboutCompany(),
      ));
      break;
    case 1:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => businessClient(),
      ));
      break;
    case 2:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => privateClient(),
      ));
      break;
    case 3:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => news(),
      ));
      break;
    case 4:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => department(),
      ));
      break;
    case 5:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => services(),
      ));
      break;
    case 6:
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => contact(),
      ));
      break;
  }
}
