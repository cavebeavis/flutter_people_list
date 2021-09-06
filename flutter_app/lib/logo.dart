import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('../images/figma_logo.png'),
      margin: EdgeInsets.only(left: 125, top: 5, bottom: 20),
      height: 35,
      alignment: Alignment.topLeft,
    );
  }
}
