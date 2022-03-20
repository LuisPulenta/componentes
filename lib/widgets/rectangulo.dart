import 'package:flutter/material.dart';

class Rectangulo extends StatelessWidget {
  final Color color;
  final double opacity;

  const Rectangulo({Key? key, required this.color, required this.opacity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeOut,
      opacity: opacity,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
