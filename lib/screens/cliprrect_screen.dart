import 'package:flutter/material.dart';

class ClipRRectScreen extends StatelessWidget {
  const ClipRRectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MiPaginaClipRRect();
  }
}

class MiPaginaClipRRect extends StatelessWidget {
  const MiPaginaClipRRect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRRectScreen')),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            height: 200,
            child: const ClipRRect(
              //borderRadius: BorderRadius.circular(50),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Image(
                image: NetworkImage(
                    'https://media.ambito.com/p/d111e168ea4b107af687a4e5b8cb30eb/adjuntos/239/imagenes/039/716/0039716539/talleres.jpg'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            height: 200,
            child: const ClipOval(
              child: Image(
                  image: NetworkImage(
                      'https://media.ambito.com/p/d111e168ea4b107af687a4e5b8cb30eb/adjuntos/239/imagenes/039/716/0039716539/talleres.jpg')),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            height: 200,
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: const Image(
                  image: NetworkImage(
                      'https://media.ambito.com/p/d111e168ea4b107af687a4e5b8cb30eb/adjuntos/239/imagenes/039/716/0039716539/talleres.jpg')),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var x = size.width;
    var y = size.height;
    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(x, 0)
      ..lineTo(x, y * 0.4)
      ..lineTo(x * 0.7, y * 0.4)
      ..lineTo(x * 0.7, y)
      ..lineTo(x * 0.3, y)
      ..lineTo(x * 0.3, y * 0.4)
      ..lineTo(0, y * 0.4);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
