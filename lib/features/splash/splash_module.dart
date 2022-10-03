import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_flutter/features/splash/presentation/splash_screen.dart';

class SplashModule extends Module {

  static const route = "/splash";

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const SplashScreen(),
    ),
  ];
}