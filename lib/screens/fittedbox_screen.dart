import 'package:flutter/material.dart';

class FittedBoxScreen extends StatelessWidget {
  const FittedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FittedboxScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
              child: FittedBox(
                alignment: Alignment.topCenter,
                child: Image(
                  image: NetworkImage(
                      'https://static.misionesonline.news/wp-content/uploads/2019/09/leopard-in-botswana-Small-14uk9s4dfdro.jpg'),
                ),
              ),
            ),
            Divider(),
            // Image(
            //   image: NetworkImage(
            //       'https://static.misionesonline.news/wp-content/uploads/2019/09/leopard-in-botswana-Small-14uk9s4dfdro.jpg'),
            // )
          ],
        ),
      ),
    );
  }
}
