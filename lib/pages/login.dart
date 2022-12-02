import "package:flutter/material.dart";
import 'package:uber_clone/pages/homeEmpresa.dart';
import 'package:uber_clone/pages/register.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Color(0xFF808080),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon Logo

              Image.network("https://i.imgur.com/Jw8Wcqs.png"),

              const SizedBox(
                height: 5.0,
              ),

              //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              //password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contraseña',
                      ),
                    ),
                  ),
                ),
              ),

              //login button
              const SizedBox(
                height: 20.0,
              ),

              ElevatedButton(
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(
                      color: Color(0xFFFF2A6D),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                style: ElevatedButton.styleFrom(backgroundColor:const Color(0xFFDAFAFC)),
                onPressed: () {},
              ),

              //not a member? register now

              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '¿Aún no eres miembro? ',
                    style: TextStyle(
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'registrate ahora',
                    style: TextStyle(
                      color:Color(0xFFFF2A6D),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
