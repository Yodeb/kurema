import "package:flutter/material.dart";
import 'package:uber_clone/pages/login.dart';

class Home extends StatefulWidget {
  static const String routeName = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Profile')),
            ElevatedButton(onPressed: () {}, child: const Text('Home')),
            ElevatedButton(onPressed: () {}, child: const Text('Trips')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, Login.routeName, (route) => false),
                child: const Text('Logout')),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
