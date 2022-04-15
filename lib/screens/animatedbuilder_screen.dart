import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation movingTop;
  late final Animation rotation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    movingTop = Tween<double>(begin: 0.0, end: 100.0)
        //.animate(controller);
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    rotation = Tween<double>(begin: 0.0, end: 2 * pi)
        //.animate(controller);
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedbuilderScreen')),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: Square(),
          builder: (context, child) {
            return Transform.rotate(
              angle: rotation.value,
              //offset: Offset(0, movingTop.value),
              child: child,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            controller.reset();
            controller.forward();
          }),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.red, Colors.yellow])),
    );
  }
}
