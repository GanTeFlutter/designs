import 'package:flutter/material.dart';
import 'package:market_app/future/login/kayit_screen.dart';
import 'package:market_app/future/login/login_sceen.dart';
import 'package:market_app/product/theme/application_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.theme,
      home: const LoginScreens(),
    );
  }
}
