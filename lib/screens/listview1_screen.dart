import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Talleres',
    'Belgrano',
    'River Plate',
    'Boca Juniors',
    'Independiente',
    'Racing',
    'Belgrano',
    'Instituto',
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 1"),
      ),
      body:

          //  ListView(
          //   children: options.map((team) {
          //     return ListTile(
          //       title: Text(team),
          //       trailing: const Icon(Icons.arrow_forward_ios_outlined),
          //       leading: const Icon(Icons.home),
          //     );
          //   }).toList(),
          // ),

          ListView(
        children: <Widget>[
          ...options
              .map((team) => ListTile(
                    title: Text(team),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    leading: const Icon(Icons.home),
                  ))
              .toList(),
          const Divider(
            color: Colors.purple,
            height: 5,
          ),
        ],
      ),
    );
  }
}
