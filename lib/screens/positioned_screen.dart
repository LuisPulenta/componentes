import 'package:flutter/material.dart';

class PositionedScreen extends StatelessWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Positioned')),
      body: Center(
        child: Container(
          width: 350,
          height: 550,
          color: Colors.blue,
          child: Stack(
            children: const [
              Positioned(
                left: 10,
                top: 10,
                bottom: 10,
                right: 10,
                child: PinkBox(),
              ),
              Positioned(
                left: 10,
                top: 10,
                bottom: 10,
                child: GreenBox(),
              ),
              Positioned.fill(
                top: 120,
                left: 120,
                child: YellowBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinkBox extends StatelessWidget {
  const PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.pink,
    );
  }
}

class GreenBox extends StatelessWidget {
  const GreenBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.green,
    );
  }
}

class YellowBox extends StatelessWidget {
  const YellowBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.yellow,
    );
  }
}
