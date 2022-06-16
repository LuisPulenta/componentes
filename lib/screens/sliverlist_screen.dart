import 'dart:math';

import 'package:flutter/material.dart';

class SliverListScreen extends StatelessWidget {
  const SliverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MiPaginaSliverList();
  }
}

class MiPaginaSliverList extends StatelessWidget {
  const MiPaginaSliverList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(20, (i) => Rectangulo(i));
    return Scaffold(
      //appBar: AppBar(title: Text('SliverList y SLiverGrid')),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('SliverGrid'),
            pinned: true,
          ),
          SliverGrid.count(
            crossAxisCount: 5,
            children: items,
          ),
          const SliverAppBar(
            title: Text('SliverList'),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, i) {
              return items[i];
            }, childCount: items.length),
          ),
          const SliverAppBar(
            title: Text('SliverGrid'),
            pinned: true,
          ),
          SliverGrid.count(
            crossAxisCount: 5,
            children: items,
          ),
          const SliverAppBar(
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

  const Rectangulo(this.index, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
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
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
