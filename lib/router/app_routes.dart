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
        route: 'asorbpointer',
        name: 'AbsorbPointer',
        screen: const AbsorbPointerScreen(),
        icon: Icons.arrow_circle_right),

    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),

    MenuOption(
        route: 'align',
        name: 'Align',
        screen: const AlignScreen(),
        icon: Icons.align_horizontal_center),

    MenuOption(
        route: 'animatedbuilder',
        name: 'Animated Builder',
        screen: const AnimatedBuilderScreen(),
        icon: Icons.animation),

    MenuOption(
      route: 'animated',
      name: 'Animated Screen',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),

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
        route: 'cliprrect',
        name: 'ClipRRect',
        screen: const ClipRRectScreen(),
        icon: Icons.stream),

    MenuOption(
        route: 'custompainter',
        name: 'CustomPainter',
        screen: const CustomPainterScreen(),
        icon: Icons.graphic_eq),
    MenuOption(
        route: 'dismissible',
        name: 'Dismissible',
        screen: const DismissibleScreen(),
        icon: Icons.move_up_sharp),

    MenuOption(
      route: 'expanded',
      name: 'Expanded',
      screen: const ExpandedScreen(),
      icon: Icons.expand,
    ),

    MenuOption(
        route: 'fadeinimage',
        name: 'FadeInImage',
        screen: const FadeInImageScreen(),
        icon: Icons.image),

    MenuOption(
      route: 'fadetransition',
      name: 'FadeTransition',
      screen: const FadeTransitionScreen(),
      icon: Icons.transfer_within_a_station,
    ),

    MenuOption(
        route: 'fittedbox',
        name: 'FittedBox',
        screen: const FittedBoxScreen(),
        icon: Icons.indeterminate_check_box_sharp),

    MenuOption(
        route: 'floatingactionbutton',
        name: 'FloatingActionButton',
        screen: const FloatingActionButtonScreen(),
        icon: Icons.radio_button_on),

    MenuOption(
      route: 'futurebuilder',
      name: 'FutureBuilder',
      screen: const FutureBuilderScreen(),
      icon: Icons.build_rounded,
    ),

    MenuOption(
        route: 'hero',
        name: 'Hero',
        screen: const HeroScreen(),
        icon: Icons.animation),

    MenuOption(
        route: 'imagefilter',
        name: 'ImageFilter',
        screen: const ImageFilterScreen(),
        icon: Icons.filter),

    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScrol & Push&Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.list,
    ),

    MenuOption(
        route: 'inheritedwidget',
        name: 'InheritedWidget',
        screen: const InheritedWidgetScreen(),
        icon: Icons.widgets),

    MenuOption(
        route: 'layoutbuilder',
        name: 'LayoutBuilder',
        screen: const LayoutBuilderScreen(),
        icon: Icons.layers),

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
      route: 'opacity',
      name: 'Opacity',
      screen: const OpacityScreen(),
      icon: Icons.opacity,
    ),

    MenuOption(
        route: 'pageview',
        name: 'PageView',
        screen: const PageViewScreen(),
        icon: Icons.pageview),

    MenuOption(
        route: 'positioned',
        name: 'Positioned',
        screen: const PositionedScreen(),
        icon: Icons.location_searching_outlined),

    MenuOption(
      route: 'safearea',
      name: 'Safe Area',
      screen: const SafeAreaScreen(),
      icon: Icons.area_chart,
    ),

    MenuOption(
      route: 'slider',
      name: 'Slider',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_outlined,
    ),

    MenuOption(
        route: 'sliverappbar',
        name: 'SliverAppBar',
        screen: const SliverAppBarScreen(),
        icon: Icons.menu),

    MenuOption(
        route: 'sliverlist',
        name: 'SliverList',
        screen: const SliverListScreen(),
        icon: Icons.menu_book),

    MenuOption(
        route: 'streambuilder',
        name: 'StreamBuilder',
        screen: const StreamBuilderScreen(),
        icon: Icons.stream),

    MenuOption(
        route: 'table',
        name: 'Table',
        screen: const TableScreen(),
        icon: Icons.table_bar),

    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputScreen(),
      icon: Icons.input_rounded,
    ),

    MenuOption(
        route: 'tooltip',
        name: 'ToolTip',
        screen: const ToolTipScreen(),
        icon: Icons.tips_and_updates),

    MenuOption(
        route: 'transform',
        name: 'Transform',
        screen: const TransformScreen(),
        icon: Icons.transform),

    MenuOption(
        route: 'transform2',
        name: 'Transform2',
        screen: const Transform2Screen(),
        icon: Icons.transform),

    MenuOption(
      route: 'wrap',
      name: 'Wrap',
      screen: const WrapScreen(),
      icon: Icons.wrap_text,
    ),
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
