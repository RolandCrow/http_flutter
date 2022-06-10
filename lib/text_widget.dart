
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  final String text;
  int fontSize;
  bool isUnderLine;
  final Color color;

  TextWidget({
    Key key, @required this.text, @required this.fontSize, this.isUnderLine=false, this.color=const Color(0xFF363f93)
}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 3,
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: isUnderLine?Color(0xFF363f93): Color(0xFFffffff),
          width: 1.0,
        ))
      ),
      child: Text(this.text, style: TextStyle(
        fontSize: this.fontSize.toDouble(), fontFamily: "Avenir",
        fontWeight: FontWeight.w900,
        color: this.color,
      ),),

    );
  }




}