import 'dart:math';

import 'package:flutter/material.dart';

class SliverListScreen extends StatelessWidget {
  const SliverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaSliverList();
  }
}

class MiPaginaSliverList extends StatelessWidget {
  const MiPaginaSliverList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(100, (i) => Rectangulo(i));
    return Scaffold(
      //appBar: AppBar(title: Text('SliverList y SLiverGrid')),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('SliverGrid'),
          ),
          SliverGrid.count(
            crossAxisCount: 5,
            children: items,
          ),
          SliverAppBar(
            title: Text('SliverList'),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, i) {
              return items[i];
            }, childCount: items.length),
          )
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final int index;

  const Rectangulo(this.index);
  Widget build(BuildContext context) {
    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(r, g, b, 1),
      ),
      child: Center(
        child: Text(
          '$index',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
