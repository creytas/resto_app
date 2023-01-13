import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  final String searchItem;

  const SearchScreen({super.key, required this.searchItem});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
            print('Searching - return pressed');
          },
        ),
        centerTitle: true,
        title: Container(
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
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey.shade200),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(35),
                  left: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  Text("Found 6 results"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
