import 'package:api_calling_ecommerce_site/SignIn_Page.dart';
import 'package:flutter/material.dart';

import 'MyFutureClass.dart';

void main() {
  runApp(MaterialApp(
    home: MyfutureBuilder(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Please Waiting....")),
      ),
    );
  }

  void loadSplash() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const SignIn_Page();
        },
      ));
    });
  }
}
