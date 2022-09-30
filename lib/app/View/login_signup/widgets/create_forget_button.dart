import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateForgetButton extends StatelessWidget {
  const CreateForgetButton({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.acme(
          color: color,
        ),
      ),
    );
  }
}
