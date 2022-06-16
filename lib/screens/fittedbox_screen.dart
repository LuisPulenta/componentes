import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FittedboxScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
              child: const FittedBox(
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                      'https://static.misionesonline.news/wp-content/uploads/2019/09/leopard-in-botswana-Small-14uk9s4dfdro.jpg'),
                ),
              ),
            ),
            const Divider(),
            const Image(
              image: NetworkImage(
                  'https://static.misionesonline.news/wp-content/uploads/2019/09/leopard-in-botswana-Small-14uk9s4dfdro.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
