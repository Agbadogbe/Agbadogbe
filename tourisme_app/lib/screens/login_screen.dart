import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../components/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/login_illustration.png',
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Sign In',
                style: AppStyles.titleText,
              ),
              SizedBox(height: 10),
              Text(
                'Welcome back',
                style: AppStyles.subtitleText,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Action pour mot de passe oublié
                  },
                  child: Text('Forgot your password?'),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
              SizedBox(height: 20),
              Text('You do not have an Account?'),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Create an account'),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 1)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Continue with'),
                  ),
                  Expanded(child: Divider(thickness: 1)),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: 'Continue with Google',
                onPressed: () {
                  // Action pour connexion avec Google
                },
              ),
              SizedBox(height: 10),
              CustomButton(
                text: 'Continue with Apple',
                onPressed: () {
                  // Action pour connexion avec Apple
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
