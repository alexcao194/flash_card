import 'package:flash_card/app/flash_card/page/flash_card_sc.dart';
import 'package:flash_card/app/home/page/home_sc.dart';
import 'package:flash_card/app/splash_screen/page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const FlashCardSC());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeSC());
      case AppRoutes.flashCard:
        return MaterialPageRoute(builder: (_) => const FlashCardSC());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              appBar: AppBar(),
              body: const Center(
                  child: Text('Fallback')),
            ));
    }
  }
}

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String flashCard = '/flash_card';
}