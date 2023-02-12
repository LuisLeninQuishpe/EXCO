import 'package:flutter/material.dart';

class Record extends StatefulWidget {
  const Record({Key? key}) : super(key: key);

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 225, 170, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(
            child: IconButton(
              alignment: Alignment.topLeft,
              icon: const Icon(Icons.arrow_circle_left),
              iconSize: 50.0,
              onPressed: () => {
                Navigator.pop(
                  context,
                )
              },
            ),
          ),
          Column(
            children: <Widget>[
              const Text('¡Crear una cuenta nueva!'),
              const Divider(
                height: 20.0,
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
                    hintText: 'Nombre',
                    filled: true,
                    fillColor: const Color.fromRGBO(222, 217, 217, 1),
                    suffixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const Divider(
                height: 25.0,
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
                    hintText: 'Email',
                    filled: true,
                    fillColor: const Color.fromRGBO(222, 217, 217, 1),
                    suffixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const Divider(
                height: 25.0,
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
                    hintText: 'Contraseña',
                    filled: true,
                    fillColor: const Color.fromRGBO(222, 217, 217, 1),
                    suffixIcon: const Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ),
              const Divider(
                height: 25.0,
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
                    'REGISTRARSE',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
