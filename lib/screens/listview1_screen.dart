import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Talleres', 'Belgrano', 'River Plate', 'Boca Juniors'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body: ListView(
        children: <Widget>[
          ...options
              .map((team) => ListTile(
                    title: Text(team),
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
          Divider(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
