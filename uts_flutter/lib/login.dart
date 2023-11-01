import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
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
          child: Padding(
           padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 200,
                    width: 200,
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        inputStyle("Username", "Enter your username", Icons.person, false),
        SizedBox(
          height: 20,
        ),
        inputStyle("Password", "Enter your password", Icons.lock, true),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 67, 41, 128),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?",
                style: TextStyle(fontSize: 15, color: Colors.grey[850]),
              ),
              TextSpan(
                text: "Register",
                style: 
                  TextStyle(fontSize: 15, color: Colors.pinkAccent[700]),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed("/register");
                  },
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget inputStyle(String title, String hinTxt, IconData iconData, bool isPassword) {
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
                borderRadius: BorderRadius.circular(20),
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
                obscureText: isPassword,
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