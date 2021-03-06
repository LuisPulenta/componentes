import 'package:flutter/material.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap')),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 30,
          direction: Axis.horizontal,
          children: const [
            Tag('Azul', Colors.blue),
            Tag('Amarillo', Colors.yellow),
            Tag('Rojo', Colors.red),
            Tag('Verde', Colors.green),
            Tag('Negro', Colors.black),
            Tag('Naranja', Colors.orange),
            Tag('Rosa', Colors.pink),
            Tag('Púrpura', Colors.purple),
          ],
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String texto;
  final Color color;

  const Tag(this.texto, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        texto,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
      avatar: CircleAvatar(
        child: Text(texto[0]),
        backgroundColor: Colors.white,
      ),
    );
  }
}
