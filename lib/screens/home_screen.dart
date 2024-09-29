import 'package:componentes/router/app_routes.dart';
import 'package:componentes/screens/card_screen.dart';
import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
              size: 40,
            ),
            title: Text(menuOptions[index].name),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => const CardScreen()));
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
