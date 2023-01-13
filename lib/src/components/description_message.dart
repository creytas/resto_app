import 'package:flutter/material.dart';

class DescriptionMessage extends StatelessWidget {
  final String message;
  const DescriptionMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      message, //'Your internet connection is currently not available.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 17,
      ),
    );
  }
}
