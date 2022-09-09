import "package:flutter/material.dart";
import 'package:uber_clone/pages/login.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  static const String routeName = "/register";
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();

  register() async {
    if (passController.text != confirmpassController.text) {
      print("Tus contraseñas no coinciden");
      return;
    }
    var url = Uri.https('www.googleapis.com', '/sesionmicroservice/account');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.post(url,
        body: {"nombre": nameController.text, "email": "example@.com","password":"12345","telefono":"3312233230","name":"Jorgito"});
    if (response.statusCode == 200) {
      Navigator.pushNamed(context, Login.routeName);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Correo"),
            TextField(controller: emailController),
            const SizedBox(height: 3),
            const Text("Telefono"),
            TextField(controller: phoneController),
            const SizedBox(height: 3),
            const Text("Nombre"),
            TextField(controller: nameController),
            const SizedBox(height: 3),
            const Text("Contraseña"),
            TextField(obscureText: true, controller: passController),
            const SizedBox(height: 3),
            const Text("Confirmar contraseña"),
            TextField(obscureText: true, controller: confirmpassController),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: register, child: const Text("Registrar"))
          ],
        ),
      ),
    );
  }
}
