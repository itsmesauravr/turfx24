import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfx24/app/screens/login_signup/view/signup/signup_page.dart';

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
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpPage(),
          ),
        );
      },
      child: Text(
        text,
        style: GoogleFonts.acme(
          color: color,
        ),
      ),
    );
  }
}
