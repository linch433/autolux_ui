import 'package:flutter/material.dart';

class CalculatorDropDown extends StatefulWidget {

  @override
  State<CalculatorDropDown> createState() => _CalculatorDropDownState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CalculatorDropDownState extends State<CalculatorDropDown> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: Text('Оберіть місто та офіс відправлення'),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Київ', 'Івано-Франківськ', 'Бровари', 'Берегове', 'Виноградів', 'Біла Церква', 'Володимир-Волинський', 'Вінниця', 'Гостомель', 'Дрогобич', 'Житомир', 'Запоріжжя', 'Калуш', 'Коломия', 'Краматорськ', 'Кременчуг', 'Кривий Ріг', 'Луцьк', 'Львів', 'Миколаїв', 'Мукачево', 'Ніжин', 'Одеса', 'Полтава', 'Рівне', 'Суми', 'Тернопіль', 'Тячів', 'Ужгород', 'Харків', 'Херсон', 'Хуст', 'Черкаси', 'Чернівці', 'Чернігів', 'Южноукраїнськ']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class CalculatorDropDown1 extends StatefulWidget {

  @override
  State<CalculatorDropDown1> createState() => _CalculatorDropDown1State();
}

/// This is the private State class that goes with MyStatefulWidget.
class _CalculatorDropDown1State extends State<CalculatorDropDown1> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: Text('Оберіть місто та офіс прибуття'),
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Київ', 'Івано-Франківськ', 'Бровари', 'Берегове', 'Виноградів', 'Біла Церква', 'Володимир-Волинський', 'Вінниця', 'Гостомель', 'Дрогобич', 'Житомир', 'Запоріжжя', 'Калуш', 'Коломия', 'Краматорськ', 'Кременчуг', 'Кривий Ріг', 'Луцьк', 'Львів', 'Миколаїв', 'Мукачево', 'Ніжин', 'Одеса', 'Полтава', 'Рівне', 'Суми', 'Тернопіль', 'Тячів', 'Ужгород', 'Харків', 'Херсон', 'Хуст', 'Черкаси', 'Чернівці', 'Чернігів', 'Южноукраїнськ']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
