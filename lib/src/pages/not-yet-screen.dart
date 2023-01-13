import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/app_bar_title.dart';
import '../components/default_not_yet_button.dart';
import '../components/description_message.dart';
import '../components/message_title.dart';
//import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class NotYetScreen extends StatefulWidget {
  final String title;
  final String? searchItem;
  const NotYetScreen({super.key, required this.title, this.searchItem});

  @override
  State<NotYetScreen> createState() => _NotYetScreenState();
}

class _NotYetScreenState extends State<NotYetScreen> {
  String _iconPath = "";
  var _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    _controller.text = widget.searchItem!;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.title == "orders"
        ? _iconPath = 'assets/images/cart.svg'
        : widget.title == "history"
            ? _iconPath = 'assets/images/calendar.svg'
            : widget.title == "404"
                ? _iconPath = 'assets/images/search.svg'
                : _iconPath = 'assets/images/wifi_off.svg';
    //widget.title == "404" ? _controller.text = widget.searchItem! : null;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leading: widget.title == "no connection"
            ? null
            : IconButton(
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
        title: widget.title == "404"
            ? Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: TextField(
                    onChanged: (text) {
                      // ignore: avoid_print
                      print("the recorded value is $text");
                    },
                    controller: _controller,
                    cursorColor: Color(0xFFFA4A0C),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _controller.clear,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none,
                      fillColor: Colors.transparent,
                      suffixIconColor: Colors.grey,
                    ),
                  ),
                ),
              )
            : AppBarTitle(
                widget: widget,
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
            widget.title == "no connection"
                ? MessageHeader(
                    messageTitle: 'No Internet Connection',
                  )
                : widget.title == "404"
                    ? MessageHeader(
                        messageTitle: 'Item not found',
                      )
                    : MessageHeader(
                        messageTitle: 'No ' + widget.title + ' yet',
                      ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: widget.title == "no connection"
                  ? DescriptionMessage(
                      message:
                          'Your internet connection is currently not available.',
                    )
                  : widget.title == "404"
                      ? DescriptionMessage(
                          message:
                              'Try searching the item with another keyword',
                        )
                      : DescriptionMessage(
                          message: 'Hit the orange button down below to order',
                        ),
            ),
            if (widget.title != "404") DefaultButton(widget: widget),
          ],
        ),
      ),
    );
  }
}
