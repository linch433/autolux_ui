<h1 align="center">AutoLux mobile application</h1>

<p align="center">
<img src="https://img.shields.io/badge/made%20by-linch433-blue">
<img src="https://img.shields.io/github/last-commit/linch433/autolux_ui">
<img src="https://img.shields.io/github/languages/count/linch433/autolux_ui">
<img src="https://img.shields.io/github/repo-size/linch433/autolux_ui">
<img src="https://img.shields.io/pub/v/box2d">
  </p>

## About company

[Autolux Express Post](https://autolux-post.com.ua/en/) is a *Ukrainian company* founded in 1997, which provides *quick and convenient delivery of documents, baggage and parcels in Ukraine.* The Company provides a careful delivery, including oversized cargo among the competitors. The network of representative offices of the company and own vehicle fleet allow us to make delivery more convenient service for every customer.

## Usage

### How it looks like
<p align="center">
<img width=33% height=585 src="https://github.com/linch433/autolux_ui/raw/master/img/main_screen_1.JPG"/>
<img width=33% height=585 src="https://github.com/linch433/autolux_ui/raw/master/img/main_screen_2.JPG"/>
<img width=33% height=585 src="https://github.com/linch433/autolux_ui/raw/master/img/main_screen_3.JPG"/>
</p>

### Global file
In main.dart you can see all classes which use in this program.

```dart
//main.dart
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'SourceSansPro'),
      title: 'AutoLux UI template',
      initialRoute: '/',
      routes: {
        '/': (context) => mainScreen(),
        '/aboutCompany': (context) => aboutCompany(),
        '/contact': (context) => contacts(),
        '/businessClient': (context) => businessClient(),
        '/department': (context) => department(),
        '/news': (context) => news(),
        '/privateClient': (context) => privateClient(),
        '/services': (context) => services(),
        '/onlineHelp': (context) =>onlineHelp(),
      },
    ),
  );
}
```

### Main screen
Main screen split to major elements:
- Widget AppBar that contain main management in a header of the screen (_home button, drawerMenu and logo_);
```dart
return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/images/mainTitle.jpg', width: 200,),
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            padding: EdgeInsets.only(left: 3.0),
            child: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              color: Colors.deepOrange,
              iconSize: 37,
            ),
          );
        }),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              color: Colors.purple,
              iconSize: 37,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ],
      ),
      drawer: navigationDrawerWidget(),
```
- Widget searchBar where you can use for find something in the app;
```dart
Widget searchBar = Container(
  margin: EdgeInsets.only(bottom: 40, left: 10, right: 10, top: 10),
  padding: EdgeInsets.only(left: 10),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.grey, // set border color
      width: 2.0,
    ),
    borderRadius:
    BorderRadius.all(Radius.circular(25.0)), // set rounded corner radius
  ),
  child: TextField(
    decoration: InputDecoration(
      icon: Icon(
        Icons.archive_outlined,
        color: Colors.grey[400],
      ),
      border: InputBorder.none,
    ),
  ),
);
```
- Class pageTitle which contain title of this page;
```dart
class pageTitle extends StatelessWidget {
  pageTitle({required this.TitlePage});
  final String TitlePage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(
          color: Colors.grey, // set border color
          width: 1.0,
        ),
      ),
      child: Text(TitlePage,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
```
- Class mainButtonMenu() that used for management from the screen to main parts of an application;
```dart
class mainButtonMenu extends StatelessWidget {
  const mainButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => department()));},
                      title: 'Відділення',
                      icon: Icons.location_on_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => servicesAndTariffs()));},
                      title: 'Тарифи',
                      icon: Icons.account_balance_wallet_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => callCourier()));},
                      title: 'Виклик кур\'єра',
                      icon: Icons.accessibility_new_outlined),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => cargoTracking()));},
                      title: 'Відстеження вантажу',
                      icon: Icons.assistant_photo_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Calculator()));},
                      title: 'Розрахунок вартості',
                      icon: Icons.calculate_outlined),
                  MyButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => contacts()));},
                      title: 'Інформаційна служба',
                      icon: Icons.mail_outline_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
- Widget mainText that have information that will show you general info about this page.
```dart
Widget mainText = Column(
  children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.grey, // set border color
            width: 1.0,
          ),
        ),
        child: Text(
          'Доставка вантажів та документів',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35),
        ),
      ),



    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.deepPurple,
      child: Column(
        children: [
          Text(
            'Нові підрозділи "Автолюкс Експрес Пошта": '
            '\n- м. Бориспіль, вул. Привокзальна 21, '
            '\n- м. Вінниця, вул. М. Ващука 14, '
            '\n- м. Гостомель, вул. Свято-Покровського 108-а,'
            '\n- м. Ізмаїль, вул. Короленко 45,'
            '\n- м. Каховка, вул. Ярослава Мудрого 18,'
            '\n- м. Ковель, провулок В. Кияна 9,'
            '\n- м. Новоград-Волинський, вул. Героїв Майдану  150,'
            '\n- м. Рівне, вул. Дворецького  123-а,'
            '\n- м. Хмельницький, вул. Миру 69,'
            '\n Ласкаво просимо! ',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange, width: 2.0),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ДЕТАЛЬНІШЕ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  style: ButtonStyle(),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  ],
);
```
