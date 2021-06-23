import 'package:flutter/material.dart';

import '../constants.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({Key key, @required this.icon, @required this.value}) : super(key: key);
  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: kPrimaryColor),
        SizedBox(width: 15),
        Text(value),
      ],
    );
  }
}
