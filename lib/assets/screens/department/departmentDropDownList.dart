import 'package:flutter/material.dart';

class dropDownButton extends StatefulWidget {
  const dropDownButton({Key? key}) : super(key: key);

  @override
  State<dropDownButton> createState() => _dropDownButtonState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _dropDownButtonState extends State<dropDownButton> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        hint: Text('Оберіть місто'),
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
