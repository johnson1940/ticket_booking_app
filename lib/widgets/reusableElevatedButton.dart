import 'package:flutter/material.dart';

class ReusableElevatedButton extends StatelessWidget {
  final String text; // Button text
  final Color color; // Button color
  final double width; // Button width
  final double height; // Button height
  final VoidCallback onPressed; // Function to call on button press

  const ReusableElevatedButton({
    Key? key,
    required this.text,
    this.color = Colors.blue, // Default color
    this.width = 10.0, // Fills available space
    this.height = 10.0, // Default height
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text,
          style: TextStyle(
              color: Colors.white, fontSize: 16.0)),
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Set button color
        minimumSize: Size(width, height), // Set button size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Rounded corners
        ),
      ),
    );
  }
}
