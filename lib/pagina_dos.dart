import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Dos',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: Colors.indigo, // Un tono de azul más serio
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 120.0,
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20, // Espaciado entre el container y el botón
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // Color sobrio para el botón
                foregroundColor: Colors.white, // Color del texto del botón
              ),
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
