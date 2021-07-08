import 'package:flutter/material.dart';


Widget companyText = Column(
  children: [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Image.asset('lib/images/about-1.jpg'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: TextSpan(
                style: new TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  new TextSpan(
                      text: '«Автолюкс Глобал Пост» ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          '- як оператор поштового зв’язку, здійснює діяльність під брендом'),
                  new TextSpan(
                      text: ' «Автолюкс Експрес Пошта» ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(text: 'на всій території України.'),
                  new TextSpan(
                      text:
                          ' Наша місія - забезпечити швидку, доступну та зручну доставку вашого вантажу. ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          'Доставляємо замовлення в Україні та всіх країнах Європи. Надаємо послуги з перевезення вантажів у сегменті B2B. Працюємо з консолідованими вантажами з Китаєм.'),
                  new TextSpan(
                      text:
                          ' Стабільно справедлива вартість перевезення, швидкість, якість та надійність. ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          'Доставка документації та вантажів під брендом «Автолюкс Експрес Пошта» здійснюється з 1997 року. Ми зберігаємо кращі практики й процеси, створені за період існування на ринку вантажних та пасажирських перевезень. Мережа регіональних відділень та власний автопарк дозволяють зробити доставку максимально зручним сервісом для кожного нашого клієнта.'),
                ],
              ),
            ),
          ),
          Image.asset('lib/images/about-2.jpg'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: TextSpan(
                style: new TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  new TextSpan(
                      text: 'Індивідуальний підхід до нестандартних рішень\n',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text: 'Всі види вантажних перевезень: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          'поштові відправлення, доставка документів, палетів, негабаритного вантажу.\n'),
                  new TextSpan(
                      text: 'Швидкий та якісний сервіс: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          'адресна доставка, експрес-доставка, можливість відстежити вантаж, зробити переадресацію вантажу.\n'),
                  new TextSpan(
                      text: 'Упакування всіх розмірів: ',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(
                      text:
                          'фірмові пакети, конверти та мішки під будь-які розміри. Ми не використовуємо більші пакування без потреби.\n'),
                  new TextSpan(
                      text:
                          'Доступне безкоштовне зберігання вантажів та пошти впродовж 7 календарних днів від дати надходження вантажу — на випадок, якщо ви не в місті, поїхали на відпочинок із друзями чи просто не хочете виходити з дому.'),
                ],
              ),
            ),
          ),
          Image.asset('lib/images/about-3.jpg'),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: TextSpan(
                style: new TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [

                  new TextSpan(text: 'Комплексні рішення\n', style: new TextStyle(fontWeight: FontWeight.bold)),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Оформлення товаросупровідних та транспортних документів\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Організація та контроль вантажно-розвантажувальних робіт\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Перевезення вантажу\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Зберігання товару\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Охорона та супровід вантажу\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Консультування та інформаційний супровід з можливістю відстеження місця розташування вантажу\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Чесна цінова політика\n'),
                  new TextSpan(text: '• '),
                  new TextSpan(text: 'Знижки та вигідні пропозиції постійним клієнтам.\n'),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ],
);
