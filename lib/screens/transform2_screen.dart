import 'package:flutter/material.dart';

class Transform2Screen extends StatefulWidget {
  const Transform2Screen({Key? key}) : super(key: key);

  @override
  State<Transform2Screen> createState() => _Transform2ScreenState();
}

class _Transform2ScreenState extends State<Transform2Screen> {
  Offset _offset = Offset.zero;
  //Offset _offset = Offset(0.4, 0.7);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(_offset.dy * 0.01)
        ..rotateY(_offset.dx * 0.01),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        child: const _ScreenBody(),
        onPanUpdate: (details) => setState(() => _offset += details.delta),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
      ),
    );
  }
}

class _ScreenBody extends StatelessWidget {
  const _ScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perspectiva')),
      body: const Center(
        child: Text('Hola Mundo!!!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
    );
  }
}
