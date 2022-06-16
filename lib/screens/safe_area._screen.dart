import 'package:flutter/material.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({Key? key}) : super(key: key);

  final estilo = const TextStyle(
      color: Colors.red, fontSize: 10, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('SafeAreaScreen')),
      body: SafeArea(
        bottom: false,
        top: true,
        child: ListView(
          children: List.generate(
              100,
              (index) => Text(
                    '$index - Hola mundo aca estoy yo programando en Flutter!!!',
                    style: estilo,
                  )),
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
