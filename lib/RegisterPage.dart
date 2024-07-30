import 'dart:io';
import 'package:api_calling_ecommerce_site/SignIn_Page.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {


  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var imagepath="";
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () async {
//                 final ImagePicker picker = ImagePicker();
// // Pick an image.
//                 final XFile? image =
//                     await picker.pickImage(source: ImageSource.gallery);


              },
              child: imagepath != ""
                  ? CircleAvatar(
                maxRadius: 60,
                backgroundImage: FileImage(
                  File(imagepath),
                ),
              )
                  : CircleAvatar(
                maxRadius: 60,
                child: Container(

                  decoration: const BoxDecoration( color: Colors.yellow,shape: BoxShape.circle),
                ),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
            child: TextField(
              //controller: email,
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email",prefixIcon: Icon(Icons.email_outlined))
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
            child: TextField(
              //autofocus: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Password"),prefixIcon: Icon(Icons.password)),
              // controller: pasword,
            ),
          ),

          ElevatedButton(
              onPressed: () {

              },
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 30),
              )),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const SignIn_Page();
                  },
                ));
              },
              child: const Text("Already Registered? \n Click here to Login",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center))
        ],
      ),
    );
  }
}

