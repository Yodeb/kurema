import "package:flutter/material.dart";
import 'package:uber_clone/pages/login.dart';
import 'package:uber_clone/pages/home.dart';
import 'package:uber_clone/pages/register.dart';

void main() {
  runApp(const UberClone());
}

class UberClone extends StatelessWidget {
  const UberClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: Login.routeName, routes: {
      Login.routeName: (context) => const Login(),
      Home.routeName: (context) => const Home(),
      Register.routeName:(context) => const Register()
    });
  }
}
