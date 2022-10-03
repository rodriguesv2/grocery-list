import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_flutter/features/login/login_module.dart';

class LoginScreen extends StatefulWidget {
  static final route = Modular.initialRoute;
  static final path = '${LoginModule.route}$route';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Bla bla bla'),
      ),
    );
  }
}
