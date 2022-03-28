import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double numShape;
  final double numPaddingV;
  final double numPaddingH;
  final Color buttonTextColor;

  const CustomButton({
    required this.onPressed,
    required this.buttonText,
    required this.backgroundColor,
    required this.buttonTextColor,
    required this.numShape,
    required this.numPaddingV,
    required this.numPaddingH
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 15,
              color: buttonTextColor
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(numShape),
            ),
            padding:EdgeInsets.symmetric(vertical: numPaddingV,horizontal:numPaddingH)
        ),
      ),
    );
  }
}
