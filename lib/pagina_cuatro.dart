import 'package:flutter/material.dart';

// PantallaCuatro
class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cuatro',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: const Color(0xff15a2b5),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(), // <-- Este queda tal como lo tenías
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
          const Expanded(
            child: Widget015(), // <-- Tu Widget015 integrado
          ),
        ],
      ),
    );
  }
}

// Widget015 actualizado
class Widget015 extends StatefulWidget {
  const Widget015({Key? key}) : super(key: key);

  @override
  State<Widget015> createState() => _Widget015State();
}

class _Widget015State extends State<Widget015> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.teal, // <-- Color cambiado y parámetro actualizado
          ),
          child: const Text('Change padding'),
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
        ),
        Text('Padding = $padValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.teal, // También cambié aquí para mantener coherencia
          ),
        ),
      ],
    );
  }
}
