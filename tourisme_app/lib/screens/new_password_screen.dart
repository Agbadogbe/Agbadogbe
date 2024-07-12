import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../components/custom_button.dart';
import 'confirmation_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new password', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'New password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Confirm new password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Change your password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
