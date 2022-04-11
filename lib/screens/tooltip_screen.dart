import 'package:flutter/material.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TooltipScreen')),
      body: Center(
        child: Tooltip(
          message: 'Este es el mejor botón del mundo',
          preferBelow: false,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: OutlinedButton(
            child: Text(
              'Hola Mundo',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Colors.blue),
              backgroundColor: Colors.teal[100],
            ),
          ),
        ),
      ),
    );
  }
}
