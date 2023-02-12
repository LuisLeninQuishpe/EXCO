import 'package:exco/src/pages/record_page.dart';
import 'package:exco/src/widget/icon_container.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 225, 170, 1),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 70,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'LECALIAN SHOP',
                style: TextStyle(
                    fontFamily: 'RibeyeMarrow',
                    fontSize: 28.0,
                    color: Colors.green),
              ),
              const IconContainer(
                url: 'asset/images/login.png',
              ),
              const Divider(
                height: 15.0,
                color: Color.fromRGBO(241, 225, 170, 1),
              ),
              SizedBox(
                width: 284.0,
                height: 42.0,
                child: TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Usuario',
                    filled: true,
                    fillColor: const Color.fromRGBO(222, 217, 217, 1),
                    suffixIcon: const Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
                color: Color.fromRGBO(241, 225, 170, 1),
              ),
              SizedBox(
                width: 284.0,
                height: 42.0,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(222, 217, 217, 1),
                    hintText: 'Contraseña',
                    suffixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const Divider(
                height: 30.0,
                color: Color.fromRGBO(241, 225, 170, 1),
              ),
              SizedBox(
                width: 235.0,
                height: 51.0,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.cyanAccent[400]),
                  child: const Text(
                    'INICIAR SESIÓN',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 50.0,
                color: Color.fromRGBO(241, 225, 170, 1),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Record()))
                },
                child: const Text('¿Si aun no tiene cuenta REGISTRARE',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Roboto',
                        fontSize: 15.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
