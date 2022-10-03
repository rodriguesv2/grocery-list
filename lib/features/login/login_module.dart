import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_flutter/features/login/presentation/login_screen.dart';

class LoginModule extends Module {
  static const route = '/login';

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, args) => const LoginScreen(),
        ),
      ];
}
