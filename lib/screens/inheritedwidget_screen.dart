import 'package:componentes/models/miscolores.dart';
import 'package:flutter/material.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MiPaginaInheritedWidget();
  }
}

class MiPaginaInheritedWidget extends StatefulWidget {
  const MiPaginaInheritedWidget({Key? key}) : super(key: key);

  @override
  State<MiPaginaInheritedWidget> createState() =>
      _MiPaginaInheritedWidgetState();
}

class _MiPaginaInheritedWidgetState extends State<MiPaginaInheritedWidget> {
  Color color1 = Colors.blue;
  Color color2 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1,
      color2,
      child: Scaffold(
        appBar: AppBar(title: const Text('InheritedWidgetScreen')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Rectangulo1(),
              Rectangulo2(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.color_lens),
            onPressed: () {
              color1 = Colors.yellow;
              color2 = Colors.green;
              setState(() {});
            }),
      ),
    );
  }
}

class Rectangulo1 extends StatelessWidget {
  const Rectangulo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final misColoresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();

    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: misColoresW?.color1,
      ),
    );
  }
}

class Rectangulo2 extends StatelessWidget {
  const Rectangulo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final misColoresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: misColoresW?.color2,
      ),
    );
  }
}
