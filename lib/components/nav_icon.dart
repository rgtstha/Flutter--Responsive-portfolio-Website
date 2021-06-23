import 'package:flutter/material.dart';

import '../constants.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.onTap,
    @required this.isActive,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon ?? Icons.home_outlined,
            color: isActive ? kPrimaryColor : Colors.grey,
            size: 40,
          ),
          Text(
            title ?? "Home",
            style: TextStyle(
              fontSize: 12,
              color: isActive ? kPrimaryColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
