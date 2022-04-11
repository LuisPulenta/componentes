import 'package:flutter/material.dart';

class CustomPainterScreen extends StatelessWidget {
  const CustomPainterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaCustomPainter();
  }
}

class MiPaginaCustomPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CustomPainterScreen')),
      body: Center(
        child: Container(
          height: 260,
          width: 260,
          color: Colors.black12,
          child: CustomPaint(
            painter: MiPainterPersonalizado(),
          ),
        ),
      ),
    );
  }
}

class MiPainterPersonalizado extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff21232a)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();
    // path.moveTo(0, 0);
    // path.lineTo(size.width * 0.5, 0);
    // path.lineTo(size.width * 0.5, size.height * 0.5);
    // path.lineTo(0, size.height * 0.5);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);

    // path.moveTo(size.width * 0.3333, 0);
    // path.lineTo(size.width * 0.3333, size.height);
    // path.moveTo(size.width * 0.6666, 0);
    // path.lineTo(size.width * 0.6666, size.height);
    // path.moveTo(0, size.height * 0.3333);
    // path.lineTo(size.width, size.height * 0.3333);
    // path.moveTo(0, size.height * 0.6666);
    // path.lineTo(size.width, size.height * 0.6666);

    path.moveTo(size.width * 0.5, size.height * 0.18);
    path.lineTo(size.width * 0.71, size.height * 0.82);
    path.lineTo(size.width * 0.17, size.height * 0.43);
    path.lineTo(size.width * 0.83, size.height * 0.43);
    path.lineTo(size.width * 0.29, size.height * 0.82);
    path.lineTo(size.width * 0.50, size.height * 0.18);

    path.lineTo(size.width * 0.61, size.height * 0.37);
    path.lineTo(size.width * 0.83, size.height * 0.43);
    path.lineTo(size.width * 0.69, size.height * 0.60);
    path.lineTo(size.width * 0.71, size.height * 0.82);
    path.lineTo(size.width * 0.50, size.height * 0.73);
    path.lineTo(size.width * 0.29, size.height * 0.82);
    path.lineTo(size.width * 0.31, size.height * 0.60);
    path.lineTo(size.width * 0.17, size.height * 0.43);
    path.lineTo(size.width * 0.39, size.height * 0.37);
    path.lineTo(size.width * 0.50, size.height * 0.18);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MiPainterPersonalizado oldDelegate) => true;
}
