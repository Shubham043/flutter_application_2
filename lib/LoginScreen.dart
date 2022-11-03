// ignore_for_file: unused_import, file_names, prefer_const_constructors, avoid_web_libraries_in_flutter, sized_box_for_whitespace

import 'dart:html';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email= TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 175, 211, 109),
        body: SingleChildScrollView ( child:Column(children: [
          SizedBox(
            height: size.height/20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width/1.2,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios), 
              // Within the SecondRoute widget
onPressed: () {
  Navigator.pop(context);
}
            ),
          ),
          SizedBox(  
            height: size.height/50,
          ),
          Container(
            width: size.width/1.3,
            child: Text(
              "Sign In To Continue!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              )
            )),
        SizedBox(
      height: size.height /10,
        ),
        Container(
          width: size.width,
          alignment: Alignment.center,
          child: field(size,"email",Icons.account_box, _email),
        ),
       Padding(padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: field(size,"password",Icons.lock,_password)
        ),
        ),
       
        SizedBox(
          height: size.height / 10,
        ),
        customButton(size),
        ],
        ),
        )
    );
  }
  Widget field(Size size,String hintText, IconData icon, TextEditingController cont){
    return Container(
      height: size.height / 15,
      width: size.width /1.3,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
  Widget customButton(Size size,){
    return Container(
      height: size.height /10,
      width: size.width /1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
       ),
       alignment: Alignment.center,
       child: Text("login",
       style: TextStyle(
        color: Colors.white,
       fontSize: 18,
       fontWeight: FontWeight.bold),
       ),
        );
  }
}
 