import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('PageViewScreen')),
        body: Center(
          child: Container(
            width: double.infinity,
            height: 300,
            child: PageView(
              controller: PageController(viewportFraction: 0.5),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Pagina(
                  color: Colors.blue,
                ),
                Pagina(
                  color: Colors.red,
                ),
                Pagina(
                  color: Colors.yellow,
                ),
                Pagina(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ));
  }
}

class Pagina extends StatelessWidget {
  final Color color;

  const Pagina({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
