import 'package:flutter/material.dart';

class MessageHeader extends StatelessWidget {
  final String messageTitle;
  const MessageHeader({
    super.key,
    required this.messageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      messageTitle,
      style: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}
