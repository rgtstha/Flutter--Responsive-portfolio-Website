import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'contact_tile.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactTile(icon: FontAwesomeIcons.phoneAlt, value: "+977-9843504515"),
          const SizedBox(height: 10),
          ContactTile(icon: FontAwesomeIcons.envelope, value: "rangeetshrestha12@gmail.com"),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
