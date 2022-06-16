import 'package:flutter/material.dart';

class TransformScreen extends StatefulWidget {
  const TransformScreen({Key? key}) : super(key: key);

  @override
  State<TransformScreen> createState() => _TransformScreenState();
}

class _TransformScreenState extends State<TransformScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationCtrl;
  late Animation<double> scaleAnimation;
  late Animation<double> translateAnimation;

  @override
  void initState() {
    animationCtrl =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    scaleAnimation = Tween<double>(begin: 1, end: 1.5).animate(animationCtrl);
    translateAnimation = Tween<double>(begin: 0, end: 250).animate(
      CurvedAnimation(parent: animationCtrl, curve: Curves.bounceOut),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TransformScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(translateAnimation.value, 0),
              child: AnimatedBuilder(
                animation: animationCtrl,
                builder: (BuildContext context, _) => Transform.rotate(
                    angle: 45,
                    child: Transform.scale(
                        scale: scaleAnimation.value, child: _Rectangulo())),
              ),
            ),
            Transform.translate(
              offset: Offset(translateAnimation.value, 0),
              child: AnimatedBuilder(
                animation: animationCtrl,
                builder: (BuildContext context, _) => Transform.rotate(
                  angle: scaleAnimation.value * 5,
                  child: Transform(
                    transform: Matrix4.skewX(scaleAnimation.value / 2),
                    child: _Rectangulo(),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                    heroTag: "Uno",
                    child: const Icon(Icons.play_arrow),
                    onPressed: () {
                      animationCtrl.forward();
                    }),
                FloatingActionButton(
                    heroTag: "Dos",
                    child: const Icon(Icons.restore),
                    onPressed: () {
                      animationCtrl.reset();
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Icon(
        Icons.home,
        size: 50,
        color: Colors.white,
      ),
    );
  }
}
