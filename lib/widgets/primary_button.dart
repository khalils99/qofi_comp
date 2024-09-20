import 'package:flutter/material.dart';

 class PrimaryButton extends StatelessWidget {

  const PrimaryButton({
    super.key, 
    required this.text, 
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;
  
  @override

  Widget build(BuildContext context) {
    return ElevatedButton( 
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(54),
        backgroundColor: const Color(0xFFDA2F46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),

      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16.0, 
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
