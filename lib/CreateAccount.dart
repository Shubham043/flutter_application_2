// ignore_for_file: unused_import, prefer_const_constructors, file_names, sized_box_for_whitespace, avoid_web_libraries_in_flutter, avoid_print, empty_statements, depend_on_referenced_packages

import 'dart:html' ;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginScreen.dart';
import 'methods.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
 final TextEditingController _password = TextEditingController();
 bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
    // backgroundColor: Color.fromARGB(255, 203, 183, 120),
        body: isLoading
        ? Center(child:Container(
          height: size.height/20,
          width: size.width/20,
          child: CircularProgressIndicator(),
        ),
        )
         :SingleChildScrollView ( child:Column(children: [
          SizedBox(
            height: size.height/20,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: size.width/1.2,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios), onPressed: (){},
            ),
          ),
          SizedBox(  
            height: size.height/50,
          ),
          Container(
            width: size.width/1.3,
            child: Text(
              "Create account To Continue!",
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
          child: field(size,"email",Icons.account_box,_email),
        ),
       Padding(padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: field(size,"name",Icons.lock, _name),
        ),
        ),
        Padding(padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: field(size,"Password",Icons.lock, _password),
        ),
        ),
        SizedBox(
          height: size.height / 10,
        ),
        customButton(size),
       Padding(padding: const EdgeInsets.all(8.0),
       child: GestureDetector(onTap: () => Navigator.pop(context),

        child:Text("login" , style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w500)
        ),
        )
        )],
        ),
        )
    );
  }

 Widget customButton(Size size) {
  return GestureDetector(
    // Within the `FirstRoute` widget
onTap: () {
  if(_name.text.isNotEmpty && _email.text.isNotEmpty && _password.text.isNotEmpty){
setState(() {
  isLoading = true;}
);
createAccount(_name.text, _email.text, _password.text).then((user){
  if(user != null){
setState(() {
  isLoading = false;
});
print("login Successful");
  }
});
}
else{
    print("please enter");
  };
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => LoginScreen()),
  // );

},
    child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green,
          ),
          alignment: Alignment.center,
          child: Text(
            "Create Account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
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
  }}