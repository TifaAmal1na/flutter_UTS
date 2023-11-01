import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts_flutter/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
      child: Column(
       children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 67, 41, 128),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 300,
                    width: 300,
                  ),
                ),
                Text(
                  "Register",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          inputStyle("Username  ", "tifaamalina", Icons.person, false),
          inputStyle("Password  ", "*****", Icons.lock, _obscureText),
          inputStyle("Confirm Password  ", "*****", Icons.lock, _obscureText),
          inputStyle("Location  ", "Indonesia", Icons.location_on, false),
          inputStyle("Identification Number  ", "D-180816", Icons.format_list_numbered, false),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 67, 41, 128),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 67, 41, 128),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Back to Login",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget inputStyle(String title, String hinTxt, IconData iconData, bool obscure) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20,
          ),
          SizedBox(width: 10),
          Text(
            "$title:",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                obscureText: obscure,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hinTxt,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
