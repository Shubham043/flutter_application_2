// ignore_for_file: avoid_print, unnecessary_null_comparison, depend_on_referenced_packages, unused_local_variable, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'CreateAccount.dart';
Future<User?> createAccount(String name,String email, String password)async{
FirebaseAuth _auth = FirebaseAuth.instance;

try{
  User? user = (await _auth.createUserWithEmailAndPassword(
    email: email, password: password)).user;
  if(user != null){
   print("Account created Succesfull");
   return user;
  }
  else{
    print("account failed");
    return user;
  }
}catch(e){
  print(e);
  return null;
}

} 

Future<User?> logIn(String email,String password)async{
  FirebaseAuth _auth = FirebaseAuth.instance;

try{
  User?  user = (await _auth.signInWithEmailAndPassword(
    email: email, password: password)).user;
  if(user != null){
   print("login Succesfull");
   return user;
  }
  else{
    print("login failed");
    return user;
  }
}catch(e){
  print(e);
  return null;
}
}

Future logOut() async{
  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    await _auth.signOut();
      }
      catch(e){
        print("error");
      }
}