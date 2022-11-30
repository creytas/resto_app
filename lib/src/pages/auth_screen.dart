import 'package:flutter/material.dart';

import 'login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.0),
          child: AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/chef_logo.png',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            bottom: new PreferredSize(
              preferredSize: new Size(350.0, 350.0),
              child: new Container(
                width: 300,
                child: new TabBar(
                  labelColor: Color(0xFFFA4A0C),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: Color(0xFFFA4A0C),
                  indicatorWeight: 3.7,
                  //indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    new Container(
                      child: new Tab(
                        //icon: Icon(Icons.cloud_outlined),
                        text: 'SIGN IN',
                      ),
                    ),
                    new Container(
                      width: 150,
                      child: Tab(
                        //icon: Icon(Icons.beach_access_sharp),
                        text: 'SIGN UP',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: const TabBarView(
            children: <Widget>[
              Center(
                child: LoginForm(),
              ),
              Center(
                child: Text("It's the SIGN UP form"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
