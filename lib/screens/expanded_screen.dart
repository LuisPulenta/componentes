import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ExpandedScreen')),
      body: Center(
        child: Column(
          children: const [
            Expanded(
              child: Cuadrado(color: Colors.red, lado: 60),
              flex: 2,
            ),
            Cuadrado(color: Colors.blue, lado: 60),
            Expanded(
              child: Cuadrado(color: Colors.green, lado: 60),
              flex: 1,
            ),
            Cuadrado(color: Colors.yellow, lado: 60),
          ],
        ),
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;
  final double lado;
  const Cuadrado({Key? key, required this.color, required this.lado})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: lado,
      height: lado,
      color: color,
    );
  }
}
