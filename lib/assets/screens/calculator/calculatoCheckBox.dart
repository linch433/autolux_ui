import 'package:flutter/material.dart';

class CalculatorCheckBox extends StatefulWidget {
  const CalculatorCheckBox({Key? key}) : super(key: key);

  @override
  _CalculatorCheckBoxState createState() => _CalculatorCheckBoxState();
}

class _CalculatorCheckBoxState extends State<CalculatorCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interativeStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };

      if (states.any(interativeStates.contains)) {
        return Colors.purple;
      }
      return Colors.deepPurple;
    }

    return Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
