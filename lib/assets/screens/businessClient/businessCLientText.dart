import 'package:flutter/material.dart';

Widget businessCLientText = Column(
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
              text: 'C',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.deepPurple),
            ),
            new TextSpan(
                text: 'ПІВПРАВЦЯ НА ПІДСТАВІ\n КОРПОРАТИВНОЇ УГОДИ\n',
                style: new TextStyle(color: Colors.deepPurple, fontSize: 20)),
          ],
        ),
      ),
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
                    'Для компаній-юридичних осіб та ФОП ми пропонуємо довготривалу та взаємовигідну співпрацю на підставі угоди.\n'),
          ],
        ),
      ),
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
                    'Типовий договір з компанією "Автолюкс Експрес пошта" а також усі необхідні додатки до нього Ви можете знайти нижче на цій сторінці в частині завантажень.\n'),
          ],
        ),
      ),
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
                    'У випадку Вашої згоди з умовами договору Ви можете його роздрукувати і заповнити. Заповнений і підписаний Замовником договір разом з реєстраційними документами Замовника Ви можете відправити в будь-якому відділенні нашої компанії в Центральний офіс компанії " Автолюкс Експрес пошта" м. Львів, вул. Під Голоском, 2А.\n'),
          ],
        ),
      ),
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
                    'Якщо у Вас виникнуть будь-які питання, пов\'язані з укладенням договору, зателефонуйте нам за тел .: 0800-33-59-29.\n')
          ],
        ),
      ),
    ),
  ],
);
