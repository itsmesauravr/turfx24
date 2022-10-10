import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:turfx24/app/model/login/login_model.dart';
import 'package:turfx24/app/screens/home/view/home_page.dart';
import 'package:turfx24/app/services/login/login_api_services.dart';

class LoginViewModel extends ChangeNotifier {
  // loginpage email and text controller

  final emailTextController = TextEditingController();
  final passWordTextController = TextEditingController();

  //Fuction calls while clicking login button

  void loginApp(ctx) async {
    final userInputEmail = emailTextController.text.toString();
    final userInputPassword = passWordTextController.text.toString();
    log(userInputEmail);
    log(userInputPassword);
    final userData = LoginModel(
      userMail: userInputEmail,
      userPassword: userInputPassword,
    );
    LoginResponse? loginResponseApi = await loginApi(userData);
    if (loginResponseApi == null) {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text(
            "",
          ),
        ),
      );
    } else {
      Navigator.push(
        ctx,
        MaterialPageRoute(
          builder: (ctx) => const HomePage(),
        ),
      );
    }
  }

  //Login Textformfield validation

  void formLoginValidation({key, ctx}) {
    if (key) {
      loginApp(ctx);
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text("Welcome back to Turfx24"),
        ),
      );
    } else {
      log("No");
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text("Please Enter Email And Password"),
        ),
      );
    }
  }
}
