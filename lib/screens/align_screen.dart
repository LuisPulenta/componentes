import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align')),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: containerBorder(),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.red,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.blue,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.red,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.yellow,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.green,
                ),
              ),
              Align(
                alignment: Alignment.center,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.purple,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.orange,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.brown,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                //alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.teal,
                ),
              ),
              Align(
                //alignment: Alignment.bottomRight,
                alignment: Alignment(-0.5, -0.5),
                child: CustomBox(
                  color: Colors.amberAccent,
                ),
              ),
              Align(
                //alignment: Alignment.bottomRight,
                alignment: Alignment(0.5, -0.5),
                child: CustomBox(
                  color: Colors.blueGrey,
                ),
              ),
              Align(
                //alignment: Alignment.bottomRight,
                alignment: Alignment(-0.5, 0.5),
                child: CustomBox(
                  color: Colors.cyanAccent,
                ),
              ),
              Align(
                //alignment: Alignment.bottomRight,
                alignment: Alignment(0.5, 0.5),
                child: CustomBox(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration containerBorder() {
    return BoxDecoration(
      border: Border.all(color: Colors.blueAccent, width: 2),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class CustomBox extends StatelessWidget {
  final Color color;
  const CustomBox({this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}
