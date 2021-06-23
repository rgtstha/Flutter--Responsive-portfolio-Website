import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const SocialIcon({
    Key key,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: FaIcon(icon),
        ),
      ),
    );
  }
}
