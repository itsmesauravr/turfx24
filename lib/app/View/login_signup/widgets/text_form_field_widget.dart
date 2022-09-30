import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
  });

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(
            5.5,
          ),
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.acme(
          color: Colors.green,
        ),
        filled: true,
        fillColor: Colors.green.shade200,
        prefixIcon: Icon(
          icon,
          color: Colors.green,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(
            5.5,
          ),
        ),
      ),
    );
  }
}
