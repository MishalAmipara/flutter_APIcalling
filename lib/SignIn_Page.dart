import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RegisterPage.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class SignIn_Page extends StatelessWidget {
  const SignIn_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: TextField(
                //controller: email,
                autofocus: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email_outlined))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: TextField(
              //autofocus: true,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text("Password"),
                  prefixIcon: Icon(Icons.password)),
              // controller: pasword,
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Sign In",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center)),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return RegisterPage();
                  },
                ));
              },
              child: Text("Not Registred yet? \n click here to Register",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center))
        ],
      ),
    );
  }
}
