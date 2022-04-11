import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LayoutBuilderScreen')),
      body: SafeArea(
        child: ColumnasContenido(),
      ),
    );
  }
}

class ColumnasContenido extends StatelessWidget {
  @override
  final children = [
    Expanded(
      child: _Rectangulo(
        color: Colors.red,
      ),
    ),
    Expanded(
      child: _Rectangulo(
        color: Colors.blue,
      ),
    ),
  ];

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
      margin: EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
