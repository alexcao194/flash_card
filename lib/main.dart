import 'package:flash_card/config/app_font.dart';
import 'package:flash_card/service/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(const MyApp());
}

// code of lna at lna

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flash Card',
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: AppRouter.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: AppFont.alexandria
      ),
    );
  }
}
