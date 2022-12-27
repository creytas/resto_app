import 'package:flutter/material.dart';
import 'package:tishka_app/src/pages/not-yet-screen.dart';

class AppBarTitle extends StatelessWidget {
  final NotYetScreen widget;

  const AppBarTitle({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title[0].toUpperCase() + widget.title.substring(1),
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
