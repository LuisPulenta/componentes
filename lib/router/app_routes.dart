import 'package:flutter/material.dart';
import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List View 1',
        screen: ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: ListView2Screen(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Cards',
        screen: CardScreen(),
        icon: Icons.card_giftcard),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   '': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
