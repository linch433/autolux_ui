import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget privateClientText = Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
              text: 'В',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.deepPurple),
            ),
            new TextSpan(
                text: 'ідправити вантаж',
                style: new TextStyle(color: Colors.deepPurple, fontSize: 20)),
          ],
        ),
      ),
    ),
    Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 20),
      // padding: EdgeInsets.symmetric(horizontal: 20),
      child: Image.asset('lib/images/delivery_guy.jfif'),
    ),
    Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
                text:
                    'Відправити вантаж Ви можете з будь-якого офісу компанії "Автолюкс Експрес Пошта", а також з будь-якої іншої адреси в населеному пункті, де присутній офіс нашої компанії.\n'),
          ],
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
              text: 'Я',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.deepPurple),
            ),
            new TextSpan(
                text: 'ким чином відправити вантаж з бажаної адреси?',
                style: new TextStyle(color: Colors.deepPurple, fontSize: 20)),
          ],
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
              text:
                  'Для відправки вантажів з бажаної Вами адреси, яка не є адресою відділення нашої компанії, викличте кур\'єра, для чого заповніть форму на нашому веб-сайті, або зателефонуйте за тел.: 0800 33 59 29.',
            ),
          ],
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
              text: 'В',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.deepPurple),
            ),
            new TextSpan(
                text: 'ідправити вантаж з офісу\n нашої компанії',
                style: new TextStyle(color: Colors.deepPurple, fontSize: 20)),
          ],
        ),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          style: new TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          children: [
            new TextSpan(
                text:
                    'Адреси, номери телефонів та розклад роботи всіх наших відділень зазначені в розділі "Відділення", де Ви зможете за допомогою інтерактивної карти обрати для відправки вантажу наш найближчий до Вас офіс. При цьому, будь ласка, зверніть увагу на графік роботи і чи є обмеження параметрів вантажів, що приймаються, в обраному Вами офісі.\n \n '),
            new TextSpan(
                text:
                    'Повна інформація про офіс допоможе Вам зробити правильний вибір. При виборі нашого офісу для відправки вантажу Ви також можете скористатися порадою наших менеджерів, якщо зателефонуєте за тел.: 0800 33 59 29.\n \n '),
            new TextSpan(
                text:
                    'Перед відправкою вантажу Ви також можете упакувати його самостійно або ж скористатися послугою упаковки нашої компанії. У заявці на виклик кур\'єра слід вказати, чи потрібні при відправці вантажу додаткові послуги нашої компанії, такі як упаковка вантажу або спуск вантажу з будь-якого поверху. При бажанні упакувати вантаж самостійно бажано це зробити до візиту кур\'єра. Послуги забирання вантажів з адреси відправника, упаковки вантажів і спуску вантажів з поверхів - оплачуються додатково відповідно до встановлених на них тарифами. При відправці вантажу необхідно вказати наступну інформацію:\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'П.І.Б. та номер телефону Відправника;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text:
                    'паспортні дані Відправника (при відправці вантажу за тарифом "Цінний");\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'адресу пункту відправки вантажу;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'П.І.Б. та номер телефону Отримувача;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text:
                    'паспотрні дані Отримувача (при відправці вантажу за тарифом "Цінний");\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'адресу пункту прибуття вантажу;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'опис вантажу;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'кількість місць вантажу;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(text: 'оголошену цінність;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text: 'платника вартості послуг (Відправник або Отримувач);\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text: 'вид додаткової послуги (якщо вона потрібна);\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text:
                    'інші параметри, якщо вони можуть вплинути на термін та вартість доставки;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text:
                    'необхідність SMS-повідомлення Одержувача про прибуття вантажу;\n'),
            new TextSpan(text: '✱ ', style: TextStyle(color: Colors.redAccent)),
            new TextSpan(
                text:
                    'точну вагу/габарити вантажу (розраховує співробітник "Автолюкс Експрес Пошта").\n \n'),
            new TextSpan(
              text:
                  'Якщо Ви вкажете мобільний номер телефону Одержувача та замовите для Одержувача SMS-повідомлення про прибуття вантажу, то йому буде вислано таке повідомлення при надходженні вантажу в пункт прибуття.\n \n',
            ),
            new TextSpan(
                text:
                    'Якщо Ви учасник програми лояльності, то до початку оформлення вантажу для перевезення вам необхідно пред\'явити картку програми лояльності нашому співробітнику, який буде здійснювати це оформлення. Вартість послуг визначається Виконавцем (далі - Експедитор) згідно із затвердженими тарифами. З порядком розрахунку ви можете ознайомитися на нашому сайті. Якщо Відправник згоден з такою вартістю, то вантаж повністю оформляється для перевезення. Якщо платник вартості послуг - Відправник, то він сплачує цю вартість. Результатом оформлення вантажу є заповнена і підписана обома сторонами (Експедитором і Відправником) товарно-транспортна накладна (далі - ТТН), один з примірників якої Відправник отримає від нашого співробітника, який оформляв вантаж для перевезення, і зберігає до передачі вантажу Одержувачу. Після того, як все буде оформлено, Відправник повинен повідомити Одержувачу реквізити ТТН - її номер, дату відправки вантажу, орієнтовний термін доставки вантажу. Всі ці відомості будуть вказані в ТТН. Крім того, Відправник повинен інформувати Одержувача про вартість зберігання вантажу. Інформація про цю вартості вказана в тарифах на послуги.'),
          ],
        ),
      ),
    ),
  ],
);
