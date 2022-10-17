import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home',name: 'Home Screen',screen: const HomeScreen(),icon: Icons.home_max),
    MenuOption(route: 'listview1',name: 'Listview tipo 1',screen: const ListView1Screen(),icon: Icons.newspaper),
    MenuOption(route: 'listview2',name: 'Listview tipo 2',screen: const ListView2Screen(),icon: Icons.list_alt_sharp),
    MenuOption(route: 'alert',name: 'Alert Screen',screen: const AlertScreen(),icon: Icons.add_alert_outlined),
    MenuOption(route: 'card',name: 'Tarjetas - Cards',screen: const CardScreen(),icon: Icons.credit_card),
    MenuOption(route: 'avatar',name: 'Circle Avatar',screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated',name: 'Animated Container',screen: const AnimatedScreen(),icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs',name: 'Text Inputs',screen: const InputScreen(),icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'slider',name: 'Slider and Checks',screen: const SliderScreen(),icon: Icons.summarize_rounded),
    MenuOption(route: 'listviewbuilder',name: 'InfiniteScroll & pull to refresh',screen: const ListViewBuilderScreen(),icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

      appRoutes.addAll({ 'home':(BuildContext context) => const HomeScreen() });

    for ( final option in menuOptions ) {
      appRoutes.addAll({ option.route: (BuildContext context) => option.screen});
    } 

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
