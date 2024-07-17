import 'package:flutter/material.dart';
import '../styles/app_styles.dart';
import '../components/custom_button.dart';

class ConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation', style: AppStyles.titleText),
        backgroundColor: AppStyles.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100.0,
            ),
            SizedBox(height: 20),
            Text(
              'Congratulations, you\'re all set!',
              style: AppStyles.titleText,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Continue',
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
