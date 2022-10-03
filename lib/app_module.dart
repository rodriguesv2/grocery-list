import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_flutter/features/login/login_module.dart';
import 'package:list_flutter/features/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes {
    const transition = TransitionType.rightToLeft;
    return [
      ModuleRoute(
        Modular.initialRoute,
        module: SplashModule(),
        transition: transition,
      ),
      ModuleRoute(
        LoginModule.route,
        module: LoginModule(),
        transition: transition,
      ),
    ];
  }
}
