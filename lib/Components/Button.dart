import 'package:flutter/material.dart';
import '../App_config/app_config.dart'; // Import the colors file

// Define a custom button component
class CustomButton extends StatelessWidget {
  final String text;                // The text on the button
  final VoidCallback onPressed;      // The action to be performed on press
  final Color color;                // The background color of the button
  final Color textColor;            // The text color
  final double borderRadius;        // Border radius for rounded corners
  final double padding;             // Padding inside the button
  final bool isOutlined;            // Whether the button is outlined or filled

  // Constructor for CustomButton with required and optional parameters
  CustomButton({
    required this.text,
    required this.onPressed,
    this.color = AppColors.primary, // Default to primary color
    this.textColor = Colors.white,  // Default to white text
    this.borderRadius = 16.0,       // Default border radius
    this.padding = 16.0,            // Default padding
    this.isOutlined = false,        // Default to filled button
  });

  @override
  Widget build(BuildContext context) {
    return isOutlined
        ? OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent, // No background color
        side: BorderSide(
          color: color, // Stroke color (same as button color)
          width: 2,      // Stroke width
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(vertical: padding, horizontal: 20),
      ),
      child: Text(
        text,
        style: TextStyle(color: color), // Text color matches button color
      ),
    )
        : ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: EdgeInsets.symmetric(vertical: padding, horizontal: 20),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor), // Text color
      ),
    );
  }
}
