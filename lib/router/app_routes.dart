import 'package:flutter/material.dart';
import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle),
    MenuOption(
      route: 'animated',
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_outlined,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScrol & Push&Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'safearea',
      name: 'Safe Area',
      screen: const SafeAreaScreen(),
      icon: Icons.area_chart,
    ),
    MenuOption(
      route: 'expanded',
      name: 'Expanded',
      screen: const ExpandedScreen(),
      icon: Icons.expand,
    ),
    MenuOption(
      route: 'wrap',
      name: 'Wrap',
      screen: const WrapScreen(),
      icon: Icons.wrap_text,
    ),
    MenuOption(
      route: 'opacity',
      name: 'Opacity',
      screen: const OpacityScreen(),
      icon: Icons.opacity,
    ),
    MenuOption(
      route: 'futurebuilder',
      name: 'FutureBuilder',
      screen: const FutureBuilderScreen(),
      icon: Icons.build_rounded,
    ),
    MenuOption(
      route: 'fadetransition',
      name: 'FadeTransition',
      screen: const FadeTransitionScreen(),
      icon: Icons.transfer_within_a_station,
    ),
    MenuOption(
        route: 'floatingactionbutton',
        name: 'FloatingActionButton',
        screen: const FloatingActionButtonScreen(),
        icon: Icons.radio_button_on),
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

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
