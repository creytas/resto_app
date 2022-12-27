import 'package:flutter/material.dart';
import 'package:tishka_app/src/pages/not-yet-screen.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.widget,
  });

  final NotYetScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xFFFA4A0C),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: TextButton(
        onPressed: () {
          print('start ordering pressed');
        },
        child: widget.title == "no connection"
            ? Text(
                'Try again',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              )
            : Text(
                'Start ordering',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
