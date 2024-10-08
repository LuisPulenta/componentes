import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Talleres',
    'Belgrano',
    'River Plate',
    'Boca Juniors',
    'Independiente',
    'Racing'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            leading: const Icon(
              Icons.home,
              color: Colors.indigo,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
