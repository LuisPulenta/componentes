import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('SafeAreaScreen')),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: List.generate(100, (index) => Text('$index - Hola mundo')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
