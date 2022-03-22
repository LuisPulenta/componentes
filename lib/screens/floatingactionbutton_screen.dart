import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiPaginaA();
  }
}

class MiPaginaA extends StatelessWidget {
  const MiPaginaA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina A')),
      body: Center(
        child: Text('FloatingActionButtonScreen'),
      ),
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.security), label: 'Ajustes'),
      ],
      backgroundColor: Colors.yellow,
    );
  }
}

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      highlightElevation: 0,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => MiPaginaB()),
        );
      },
      child: Icon(Icons.add),
    );
  }
}

class MiPaginaB extends StatelessWidget {
  const MiPaginaB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina B')),
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
