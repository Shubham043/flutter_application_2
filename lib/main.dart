// ignore_for_file: unused_import, prefer_const_constructors, depend_on_referenced_packages
// install firebase core 
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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