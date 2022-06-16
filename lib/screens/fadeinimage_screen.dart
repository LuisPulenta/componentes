import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FadeInImage')),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 80,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image: NetworkImage('https://picsum.photos/id/$index/600/400'),
          );
        },
      ),
    );
  }
}
