import 'package:autolux_ui/assets/screens/callCourier.dart';
import 'package:autolux_ui/assets/screens/cargoTracking.dart';
import 'package:autolux_ui/assets/screens/servicesScreen/services.dart';
import 'package:autolux_ui/assets/widget/buttonArea.dart';
import 'package:flutter/material.dart';

class mainButtonAreaMenu extends StatelessWidget {
  const mainButtonAreaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonArea(onPressed: () {Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => services()));}, title: 'ЕКСПРЕС-ДОСТАВКА\nВАНТАЖУ ТА ПОШТИ', icon: Icons.airport_shuttle_outlined),
              ButtonArea(onPressed: () {Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => callCourier()));}, title: 'ВИКЛИК КУР\'ЄРА', icon: Icons.assignment_ind_outlined),
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
              ButtonArea(onPressed: () {Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => cargoTracking()));}, title: 'ВІДСТЕЖЕННЯ\nВАНТАЖУ', icon: Icons.visibility_outlined),
            ],
          ),
        ],
      ),
    );
  }
}

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
