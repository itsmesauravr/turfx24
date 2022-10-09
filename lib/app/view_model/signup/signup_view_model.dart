import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfx24/app/model/signup/signup_model.dart';
import 'package:turfx24/app/services/signup/signup_api_service.dart';
import 'package:turfx24/app/utilities/colors/background_color.dart';

class SignUpViewModel extends ChangeNotifier {
  // Make text obscure for password

  bool _isObscure = true;
  get isObscure => _isObscure;
  set isObscure(value) {
    _isObscure = value;
    notifyListeners();
  }

  // Signup button operations while clicking button

  String? newId;
  final emailEditController = TextEditingController();
  final passwordEditController = TextEditingController();
  final confirmEditController = TextEditingController();

  signUpOperation(ctx) async {
    final userEmail = emailEditController.text.toString();
    final userPassword = passwordEditController.text.toString();
    final userData =
        SignUpModel(userInputName: userEmail, userInputPassWord: userPassword);
    SignUpReturnResponse? reponseApi = await signUpApi(userData);
    if (reponseApi != null) {
      if (reponseApi.status == true) {
        log("Home Page Navigation");
      } else {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(
            content: Text(
              reponseApi.message.toString(),
            ),
          ),
        );
      }
    } else {
      return;
    }
  }

  // Form validation for email, password, and confirm password textformfield

  void formValidate({required key, required ctx}) {
    if (key) {
      if (passwordEditController.text == confirmEditController.text) {
        snackBar(
          ctx: ctx,
          color: AppColors.kGreenColor,
          text: Text(
            "Successfully registered",
            style: GoogleFonts.acme(
              fontSize: 16,
            ),
          ),
          elevation: 5.5,
        );
        signUpOperation(ctx);
      } else {
        snackBar(
          ctx: ctx,
          color: AppColors.kRedColor,
          text: Text(
            "Passwords donot match.....",
            style: GoogleFonts.acme(
              fontSize: 16,
            ),
          ),
          elevation: 5.5,
        );
      }
    }
  }
}

// Snackbar to shows results

void snackBar({ctx, color, text, elevation}) {
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: text,
      backgroundColor: color,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(10),
      elevation: elevation,
    ),
  );
}
