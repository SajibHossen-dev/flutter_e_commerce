import 'package:c_commerce/features/authentication/screens/login/login.dart';
import 'package:c_commerce/features/authentication/screens/singup.widgets/singup.dart';
import 'package:c_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      home: const SingupScreen(),
    );
  }
}
