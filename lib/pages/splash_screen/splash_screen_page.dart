import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 4,
              child: Image.asset('assets/images/masterclass_logo.png',
                  fit: BoxFit.fill)),
          Expanded(child: Container()),
        ],
      )),
    );
  }
}
