import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tap_2024/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('HaloLogo.png'),
      logoWidth: 150,
      title: const Text('Bienvenidos a mi app',style: TextStyle(fontSize: 15)),
      showLoader: true,
      loadingText: const Text('Cargando app'),
      navigator: const LoginScreen(),
      durationInSeconds: 3,
      gradientBackground: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.grey,
          Colors.black
        ]
        ),
    );
  }
}