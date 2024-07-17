import 'package:flutter/material.dart';
import '../styles/app_styles.dart'; // Assurez-vous que le chemin est correct

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppStyles.primaryColor, // Couleur de fond ajustée
        foregroundColor: Colors.white, // Couleur du texte ajustée
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
