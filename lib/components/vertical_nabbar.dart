import 'package:flutter/material.dart';

import 'nav_icon.dart';

class VerticalNavBar extends StatefulWidget {
  final PageController pageController;
  VerticalNavBar({Key key, this.pageController}) : super(key: key);

  @override
  _VerticalNavBarState createState() => _VerticalNavBarState();
}

class _VerticalNavBarState extends State<VerticalNavBar> {
  List<NavItem> _navItems = [
    NavItem("Home", Icons.home_outlined),
    NavItem("About Me", Icons.person_outline),
    NavItem("Contact", Icons.email_outlined),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 30),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return NavIcon(
            icon: _navItems[index].icon,
            title: _navItems[index].title,
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOutSine,
                );
              });
            },
            isActive: selectedIndex == index ? true : false,
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: _navItems.length);
  }
}

class NavItem {
  final String title;
  final IconData icon;

  NavItem(this.title, this.icon);
}
