import 'package:componentes/widgets/rectangulo.dart';
import 'package:flutter/material.dart';

class OpacityScreen extends StatelessWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MiPagina();
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({Key? key}) : super(key: key);

  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opacity y AnimatedOpacity')),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Wrap(direction: Axis.vertical, spacing: 50, children: [
          const Rectangulo(
            color: Colors.red,
            opacity: 1,
          ),
          Rectangulo(
            color: Colors.blue,
            opacity: opacity,
          ),
          const Rectangulo(
            color: Colors.yellow,
            opacity: 1,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.opacity),
          onPressed: () {
            opacity == 0 ? opacity = 1 : opacity = 0;
            setState(() {});
          }),
    );
  }
}
