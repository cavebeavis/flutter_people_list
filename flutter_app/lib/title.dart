import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String title;

  PageTitle(this.title);

  // See https://stackoverflow.com/questions/50549539/how-to-add-custom-color-to-flutter.
  final MaterialColor fontColor = MaterialColor(0xFF131F60, {
    50: Color.fromRGBO(19, 31, 96, .1),
    100: Color.fromRGBO(19, 31, 96, .2),
    200: Color.fromRGBO(19, 31, 96, .3),
    300: Color.fromRGBO(19, 31, 96, .4),
    400: Color.fromRGBO(19, 31, 96, .5),
    500: Color.fromRGBO(19, 31, 96, .6),
    600: Color.fromRGBO(19, 31, 96, .7),
    700: Color.fromRGBO(19, 31, 96, .8),
    800: Color.fromRGBO(19, 31, 96, .9),
    900: Color.fromRGBO(19, 31, 96, 1),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 40,
          color: fontColor,
        ),
      ),
      margin: EdgeInsets.only(left: 20, top: 50, bottom: 20, right: 20),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
    );
  }
}
