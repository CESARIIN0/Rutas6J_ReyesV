import 'package:flutter/material.dart';
import 'dart:ui';

// PantallaSeis
class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Seis',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: const Color(0xff15a2b5),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(), // <-- No lo moví
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
          const Expanded(
            child: Widget024(), // <-- Aquí agregué tu Widget024 respetando todo
          ),
        ],
      ),
    );
  }
}

// Widget024 (BackdropFilter)
class Widget024 extends StatelessWidget {
  const Widget024({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          '0' * 10000, // Mucho texto de fondo
          style: const TextStyle(
            color: Colors.green,
          ),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4.0,
                sigmaY: 4.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                color: Colors.black
                    .withOpacity(0.1), // Fondo transparente mejorado
                child: const Text(
                  'Blur',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
