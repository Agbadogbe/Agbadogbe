import 'package:flutter/material.dart';
import '../styles/app_styles.dart';  // Assurez-vous que ce fichier contient les bons styles

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 80),
              Image.asset(
                'assets/images/login_illustration.png',  // Assurez-vous que le chemin est correct
                height: 150,
              ),
              SizedBox(height: 30),
              Text(
                'Welcome back',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgot_password'); // Assurez-vous que cette route est définie dans votre Navigator
                },
                child: Text(
                  'Have you forgotten your password?',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home'); // Assurez-vous que cette route est définie dans votre Navigator
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.primaryColor, // Couleur de fond ajustée
                  foregroundColor: Colors.white, // Couleur du texte ajustée
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
                child: Text('Log In', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You do not have an Account ? ', style: TextStyle(fontSize: 16)),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup'); // Assurez-vous que cette route est définie dans votre Navigator
                    },
                    child: Text('Create an account', style: TextStyle(fontSize: 16, color: Colors.green)),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text('Continue with', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement your method for Google Sign-In here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.primaryColor, // Couleur de fond ajustée
                  foregroundColor: Colors.white, // Couleur du texte ajustée
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
                child: Text('Continue with Google', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement your method for Apple Sign-In here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.primaryColor, // Couleur de fond ajustée
                  foregroundColor: Colors.white, // Couleur du texte ajustée
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
                child: Text('Continue with Apple', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 24),
              Text(
                'By registering you agree to the Terms and Conditions',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
