import 'package:flutter/material.dart';
import 'package:componentes/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.primary),
          title: Text("Soy un título"),
          subtitle: Text(
              "Adipisicing ex Lorem dolor consequat officia nostrud consectetur consequat pariatur consequat fugiat id quis ut."),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Ok"),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
