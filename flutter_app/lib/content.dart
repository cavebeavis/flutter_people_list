import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String content;
  final double maxWidth;
  final double minWidth;

  PageContent(this.content, this.maxWidth, this.minWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey.shade800,
        ),
      ),
      margin: EdgeInsets.only(left: 20, top: 50, bottom: 20, right: 20),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints(minWidth: minWidth, maxWidth: maxWidth),
    );
  }
}
