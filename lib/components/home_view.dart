import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ranjit Shrestha",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          Text("Application Developer"),
        ],
      ),
    );
  }
}
