import 'package:flutter/material.dart';

import './content.dart';
//import './datatable.dart';
import './list.dart';
import './logo.dart';
import './title.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // The blue border above the page.
  // See https://stackoverflow.com/questions/50549539/how-to-add-custom-color-to-flutter.
  final MaterialColor topColor = MaterialColor(0xFF40DCDA, {
    50: Color.fromRGBO(64, 220, 218, .1),
    100: Color.fromRGBO(64, 220, 218, .2),
    200: Color.fromRGBO(64, 220, 218, .3),
    300: Color.fromRGBO(64, 220, 218, .4),
    400: Color.fromRGBO(64, 220, 218, .5),
    500: Color.fromRGBO(64, 220, 218, .6),
    600: Color.fromRGBO(64, 220, 218, .7),
    700: Color.fromRGBO(64, 220, 218, .8),
    800: Color.fromRGBO(64, 220, 218, .9),
    900: Color.fromRGBO(64, 220, 218, 1),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma People List',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: topColor,
        backgroundColor: Colors.white,
      ),
      //home: MyHomePage(title: ''),
      home: Scaffold(
        appBar: PreferredSize(
            //
            preferredSize: Size.fromHeight(4.0), // here the desired height
            child: AppBar()),
        body: Column(
          children: [
            Logo(),
            PageTitle('The Person Finder'),
            //TODO: redo with named and not positional parameters in constructor.
            PageContent(
              'If you just can\'t find someone and need to know that they look like, you\'ve come to the right place! Just type the name of the person you are looking for below into the search box!',
              600,
              300,
            ),
            ListContainer(),
            //AppDataTable(),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
