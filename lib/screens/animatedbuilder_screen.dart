import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

//-----------------------------------------------------------------------
//------------------ Inicialización de variables ------------------------
//-----------------------------------------------------------------------

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation movingTop;
  late final Animation rotation;

//-----------------------------------------------------------------------
//---------------------------- Init State -------------------------------
//-----------------------------------------------------------------------

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));

    movingTop = Tween<double>(begin: 0.0, end: 100.0)
        //.animate(controller);
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    rotation = Tween<double>(begin: 0.0, end: 2 * pi)
        //.animate(controller);
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }

//-----------------------------------------------------------------------
//---------------------------- Pantalla ---------------------------------
//-----------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedbuilderScreen')),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: const Square(),
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(-movingTop.value / 2, movingTop.value),
              child: Transform.rotate(
                angle: rotation.value,
                child: child,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          onPressed: () {
            controller.reset();
            controller.forward();
          }),
    );
  }
}

//-----------------------------------------------------------------------
//---------------------------- Class Square -----------------------------
//-----------------------------------------------------------------------

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.red, Colors.yellow])),
    );
  }
}
