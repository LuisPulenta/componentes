import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilderScreen')),
      body: SafeArea(
        child: ColumnasContenido(),
      ),
    );
  }
}

class ColumnasContenido extends StatelessWidget {
  final children = [
    const Expanded(
      child: _Rectangulo(
        color: Colors.red,
      ),
    ),
    const Expanded(
      child: _Rectangulo(
        color: Colors.blue,
      ),
    ),
  ];

  ColumnasContenido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth < 600)
            ? Column(
                children: children,
              )
            : Row(
                children: children,
              );
      },
    );
  }
}

class _Rectangulo extends StatelessWidget {
  final Color color;

  const _Rectangulo({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
