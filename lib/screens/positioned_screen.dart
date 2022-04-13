import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PositionedScreen')),
      body: Center(
        child: Text('PositionedScreen'),
      ),
    );
  }
}
