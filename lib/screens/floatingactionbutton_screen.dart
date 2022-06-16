import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MiPaginaA();
  }
}

class MiPaginaA extends StatelessWidget {
  const MiPaginaA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina A')),
      body: const Center(
        child: Text('FloatingActionButtonScreen'),
      ),
      floatingActionButton: const BotonFlotante(),
      bottomNavigationBar: const BarraNavegacion(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
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
          MaterialPageRoute(
              builder: (BuildContext context) => const MiPaginaB()),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

class MiPaginaB extends StatelessWidget {
  const MiPaginaB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina B')),
      floatingActionButton: const BotonFlotante(),
      bottomNavigationBar: const BarraNavegacion(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
