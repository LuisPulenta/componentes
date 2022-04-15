import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilterScreen extends StatelessWidget {
  const ImageFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagefilterScreen')),
      body: Stack(children: [
        Center(
            child: Image.network(
                'https://img2.xnostars.com/actriz-img/alice-goodwin.jpg')),
        Positioned(
          top: 330,
          left: 110,
          right: 130,
          bottom: 300,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(),
            ),
          ),
        ),
      ]),
    );
  }
}
