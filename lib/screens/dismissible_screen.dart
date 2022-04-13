import 'package:flutter/material.dart';

class DismissibleScreen extends StatelessWidget {
  const DismissibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DismissibleScreen')),
      body: Center(
        child: Text('DismissibleScreen'),
      ),
    );
  }
}
