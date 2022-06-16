import 'package:componentes/screens/hero_detail_screen.dart';
import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Animation')),
      body: Table(
        children: [
          const TableRow(children: [
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          const TableRow(children: [
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
            Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          TableRow(children: [
            GestureDetector(
              child: const Hero(
                tag: "Luis",
                child: FlutterLogo(
                  size: 150,
                ),
              ),
              onTap: () => pushRoute(context),
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
          ]),
          TableRow(children: [
            const Placeholder(
              fallbackHeight: 150,
            ),
            const Placeholder(
              fallbackHeight: 150,
            ),
            Container(),
          ]),
        ],
      ),
    );
  }

  void pushRoute(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const HeroDetailScreen(),
      ),
    );
  }
}
