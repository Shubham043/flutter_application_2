// ignore_for_file: unused_import, prefer_const_constructors
// install firebase core 
import 'package:flutter/material.dart';

import 'CreateAccount.dart';
import 'LoginScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateAccount(),
    );
  }
}