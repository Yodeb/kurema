import "package:flutter/material.dart";
import 'package:uber_clone/pages/home.dart';
import 'package:uber_clone/pages/register.dart';

class Login extends StatefulWidget {
  static const String routeName = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Usuario",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const TextField(),
            const SizedBox(height: 25),
            const Text("Contraseña",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const TextField(obscureText: true),
            const SizedBox(height: 55),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Home.routeName);
                },style: TextButton.styleFrom(
    primary: Colors.white,
    backgroundColor: Colors.purple[200]),
                child: const Text("Login",style: TextStyle(fontSize: 20))),
                TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Register.routeName);
                },
                child: const Text("Registrate aqui"))
          ],
        ),
      ),
    );
  }
}