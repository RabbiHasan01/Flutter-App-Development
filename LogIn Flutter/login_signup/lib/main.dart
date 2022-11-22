
import 'package:flutter/material.dart';

import 'package:login_signup/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context) => const MyLogIn()},
  ));
}

 