import 'package:flutter/material.dart';
import 'package:tap_2024/screens/dashboard_screen.dart';
import 'package:tap_2024/screens/settings/global_values.dart';
import 'package:tap_2024/screens/splash_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.banThemeDark,
      builder: (context,value,_) {
        return MaterialApp(
          theme: value ? ThemeData.dark() : ThemeData.light(),
          title: 'Material App',
          routes: {
            "/dash" : (context) => const DashboardScreen()
          },
          home: const SplashScreen()
        );
      }
    );
  }
}