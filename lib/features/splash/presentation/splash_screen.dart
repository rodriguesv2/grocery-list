import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_flutter/assets/app_colors.dart';
import 'package:list_flutter/assets/app_text_styles.dart';
import 'package:list_flutter/common/atomic/molecule/default_button_molecule.dart';
import 'package:list_flutter/features/splash/splash_module.dart';

class SplashScreen extends StatefulWidget {
  static final route = Modular.initialRoute;
  static final path = "${SplashModule.route}$route";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static final route = Modular.initialRoute;
  static final path = "${SplashModule.route}$route";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultButtonMolecule.secondary(
              text: 'Primario',
              onTap: () {},
              isEnabled: false,
            ),
          ],
        ),
      ),
    );
  }
}
