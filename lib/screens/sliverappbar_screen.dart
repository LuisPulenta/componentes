import 'dart:math';

import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaSliverAppBar();
  }
}

class MiPaginaSliverAppBar extends StatelessWidget {
  final rnd = Random();
  final List<Color> colores = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.brown,
    Colors.purple,
    Colors.pink,
    Colors.lime,
    Colors.amber,
    Colors.greenAccent,
    Colors.lightGreenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        100,
        (i) => Container(
            width: double.infinity,
            height: 150,
            color: colores[rnd.nextInt(colores.length)]));

    // return Scaffold(
    //   appBar: AppBar(title: Text('SliverAppBar')),
    //   body: ListView.builder(
    //       itemCount: 100,
    //       itemBuilder: (BuildContext context, int index) {
    //         return items[index];
    //       }),
    // );

    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            title: Text('SliverAppBar'),
            expandedHeight: 200,
            flexibleSpace: Image.network(
              'https://interiorfutbolero.com.ar/wp-content/uploads/2022/03/Talleres-a-16avos-de-final.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          ),
        ],
      ),
    );
  }
}
