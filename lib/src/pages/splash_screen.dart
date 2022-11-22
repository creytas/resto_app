import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFFA4A0C),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(
                      'assets/images/chef_logo.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'MEKADOL',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
