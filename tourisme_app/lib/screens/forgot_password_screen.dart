import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../components/custom_button.dart';
import 'new_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Send',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPasswordScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
