import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/confirmation_screen.dart';
import 'screens/home_screen.dart';
import 'styles/app_styles.dart';
import 'screens/cotonou_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism App',
      theme: ThemeData(
        primaryColor: AppStyles.primaryColor,
        textTheme: TextTheme(
         headlineLarge: AppStyles.heading1, // Changer headline1 en headlineLarge
          bodyLarge: AppStyles.bodyText, // Changer bodyText1 en bodyLarge
          titleLarge: AppStyles.titleText, // Changer headline6 en titleLarge
          ),
        ),
      home: SplashScreen(),
      routes: {
        '/splash': (context) => SplashScreen(),
        '/intro': (context) => IntroScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/confirmation': (context) => ConfirmationScreen(),
        '/home': (context) => HomeScreen(),
        '/cotonou': (context) => CotonouScreen(), // Ajoutez cette ligne
      },
    );
  }
}
