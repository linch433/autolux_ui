import 'package:autolux_ui/assets/widget/buttonArea.dart';
import 'package:flutter/material.dart';

Widget mainButtonAreaMenu = Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonArea(onPressed: () {}, title: 'ЕКСПРЕС-ДОСТАВКА\nВАНТАЖУ ТА ПОШТИ', icon: Icons.airport_shuttle_outlined),
            ButtonArea(onPressed: () {}, title: 'ВИКЛИК КУР\'ЄРА', icon: Icons.assignment_ind_outlined),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonArea(onPressed: () {}, title: 'КАЛЬКУЛЯТОР\nВАРТОСТІ', icon: Icons.calculate_outlined),
            ButtonArea(onPressed: () {}, title: 'ТАРИФИ ТА\nДОСТАВКА', icon: Icons.account_balance_wallet_outlined),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonArea(onPressed: () {}, title: 'ВІДСТЕЖЕННЯ\nВАНТАЖУ', icon: Icons.visibility_outlined),
          ],
        ),
      ],
    ),
);

// Container(
//   child: Center(
//     child: Row(
//       children: [
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ButtonArea(
//                   onPressed: () {}, title: 'Відділення', icon: Icons.ac_unit),
//               ButtonArea(
//                   onPressed: () {}, title: 'Відділення', icon: Icons.ac_unit),
//               ButtonArea(
//                   onPressed: () {}, title: 'Відділення', icon: Icons.ac_unit),
//             ],
//           ),
//         ),
//           Expanded(
//             child: Column(
//               children: [
//                 ButtonArea(
//                     onPressed: () {}, title: 'Відділення', icon: Icons.ac_unit),
//                 ButtonArea(
//                     onPressed: () {}, title: 'Відділення', icon: Icons.ac_unit),
//               ],
//             ),
//           ),
//       ],
//     ),
//   ),
// );
