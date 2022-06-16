import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('TableScreen')),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            //defaultColumnWidth: FixedColumnWidth(100),
            columnWidths: const {
              0: FractionColumnWidth(0.6),
              1: FractionColumnWidth(0.2),
              2: FractionColumnWidth(0.1),
              3: FractionColumnWidth(0.1),
            },
            border: TableBorder.all(),
            children: const [
              TableRow(children: [
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
                RectanguloMedium(),
              ]),
              TableRow(children: [
                RectanguloMedium(),
                RectanguloLarge(),
                RectanguloSmall(),
                RectanguloLarge(),
              ]),
              TableRow(children: [
                RectanguloSmall(),
                RectanguloMedium(),
                RectanguloLarge(),
                RectanguloSmall(),
              ]),
            ],
          ),
        )));
  }
}

class RectanguloLarge extends StatelessWidget {
  const RectanguloLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  const RectanguloMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.teal,
      ),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  const RectanguloSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.yellow,
      ),
    );
  }
}
