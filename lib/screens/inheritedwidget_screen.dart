import 'package:componentes/models/miscolores.dart';
import 'package:componentes/widgets/rectangulo.dart';
import 'package:flutter/material.dart';

class InheritedWidgetScreen extends StatelessWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaInheritedWidget();
  }
}

class MiPaginaInheritedWidget extends StatefulWidget {
  @override
  State<MiPaginaInheritedWidget> createState() =>
      _MiPaginaInheritedWidgetState();
}

class _MiPaginaInheritedWidgetState extends State<MiPaginaInheritedWidget> {
  Color color1 = Colors.redAccent;
  Color color2 = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1,
      color2,
      child: Scaffold(
        appBar: AppBar(title: Text('InheritedWidgetScreen')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Rectangulo1(),
              Rectangulo2(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.color_lens),
            onPressed: () {
              color1 = Colors.pink;
              color2 = Colors.yellow;
              setState(() {});
            }),
      ),
    );
  }
}

class Rectangulo1 extends StatelessWidget {
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
