import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('TableScreen')),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            //defaultColumnWidth: FixedColumnWidth(100),
            columnWidths: {
              0: FractionColumnWidth(0.5),
              1: FractionColumnWidth(0.3),
              2: FractionColumnWidth(0.2),
            },
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                RectanguloLarge(),
                RectanguloMedium(),
                RectanguloSmall(),
              ]),
              TableRow(children: [
                RectanguloMedium(),
                RectanguloLarge(),
                RectanguloSmall(),
              ]),
              TableRow(children: [
                RectanguloSmall(),
                RectanguloMedium(),
                RectanguloLarge(),
              ])
            ],
          ),
        )));
  }
}

class RectanguloLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
    );
  }
}
