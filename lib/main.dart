import 'package:flutter/material.dart';
import 'package:kemal/a.dart';
import 'package:kemal/login.dart';
import 'package:kemal/src.dart';
import 'package:kemal/download.dart';
import 'profile.dart';
import 'setprof.dart';
import 'bb.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
