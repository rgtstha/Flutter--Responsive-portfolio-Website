import 'package:flutter/material.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({Key key, this.text, this.space = 8}) : super(key: key);

  final String text;
  final double space;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: space),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
