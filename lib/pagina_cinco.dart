import 'package:flutter/material.dart';

// PantallaCinco
class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cinco',
            style: TextStyle(color: Colors.white, fontSize: 32)),
        backgroundColor: const Color(0xff15a2b5),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(), // <-- Lo dejo igual, como pediste
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
          const Expanded(
            child: Widget020(), // <-- Aquí agrego tu Widget020
          ),
        ],
      ),
    );
  }
}

// Widget020 (AnimatedSwitcher)
class Widget020 extends StatefulWidget {
  const Widget020({Key? key}) : super(key: key);

  @override
  State<Widget020> createState() => _Widget020State();
}

class _Widget020State extends State<Widget020> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 40),
              key: ValueKey<int>(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
