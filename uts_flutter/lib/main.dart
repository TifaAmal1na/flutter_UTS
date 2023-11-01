import 'package:flutter/material.dart';
import 'package:uts_flutter/login.dart';
import 'package:uts_flutter/register.dart';
import 'package:uts_flutter/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => Splash(),
      '/login':(context) => Login(),
      '/register':(context) => Register()
    },
  ));
}
