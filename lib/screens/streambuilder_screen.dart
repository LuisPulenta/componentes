import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatelessWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaStream();
  }
}

class MiPaginaStream extends StatefulWidget {
  @override
  State<MiPaginaStream> createState() => _MiPaginaStreamState();
}

class _MiPaginaStreamState extends State<MiPaginaStream> {
  final colorStream = StreamController<Color>();

  int counter = -1;
  final List<Color> colorList = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.black,
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamBuilderScreen')),
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          //initialData: initialData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return LoadingWidget();
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return Text('Fin del Stream :( ');
            }

            return Container(
              height: 150,
              width: 150,
              color: snapshot.data,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.color_lens),
          onPressed: () {
            //colorStream.sink.add(Colors.yellow);
            counter++;
            if (counter < colorList.length) {
              colorStream.sink.add(colorList[counter]);
            } else {
              // counter = 0;
              // colorStream.sink.add(colorList[counter]);
              colorStream.close();
            }
          }),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Esperando clicks'),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}
