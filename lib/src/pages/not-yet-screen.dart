import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class NotYetScreen extends StatefulWidget {
  final String title;
  const NotYetScreen({super.key, required this.title});

  @override
  State<NotYetScreen> createState() => _NotYetScreenState();
}

class _NotYetScreenState extends State<NotYetScreen> {
  String _iconPath = "";

  @override
  Widget build(BuildContext context) {
    widget.title == "orders"
        ? _iconPath = 'assets/images/cart.svg'
        : _iconPath = 'assets/images/calendar.svg';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: 25,
          ),
          onPressed: () {
            print(widget.title[0].toUpperCase() +
                widget.title.substring(1) +
                ' - return pressed');
          },
        ),
        centerTitle: true,
        title: Text(
          widget.title[0].toUpperCase() + widget.title.substring(1),
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ), //final headerTitle = title[0].toUpperCase() + title.substring(1);
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, bottom: 24),
              child: SvgPicture.asset(
                _iconPath,
                width: 130,
              ),
            ),
            Text(
              'No ' + widget.title + ' yet',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Hit the orange button down below to order',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              width: 250,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFFFA4A0C),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: TextButton(
                onPressed: () {
                  print('start ordering pressed');
                },
                child: Text(
                  'Start ordering',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
