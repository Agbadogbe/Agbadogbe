import 'package:flutter/material.dart';
import 'intro_screen.dart'; // Importer l'écran d'introduction

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToIntro();
  }

  _navigateToIntro() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => IntroScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash_logo.png'), // Assurez-vous que l'image est dans ce chemin
      ),
    );
  }
}
