import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../components/custom_button.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Create an account',
              onPressed: () {
                // Pour l'instant, ne faites rien
              },
            ),
          ],
        ),
      ),
    );
  }
}
