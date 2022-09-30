import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfx24/app/View/login_signup/widgets/create_forget_button.dart';
import 'package:turfx24/app/View/login_signup/widgets/divider_or_widget.dart';
import 'package:turfx24/app/View/login_signup/widgets/text_form_field_widget.dart';
import 'package:turfx24/app/res/colors/background_color.dart';
import 'package:turfx24/app/res/images/login_signup_images.dart';
import 'package:turfx24/app/res/sizedbox.dart/sized_boxs.dart';

class TextFormFieldsContainer extends StatelessWidget {
  const TextFormFieldsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: size.height * 65 / 100,
        width: size.width * 85 / 100,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxs.kSizedBoxHeight50,
              Text(
                "Login",
                style: GoogleFonts.acme(color: AppColors.kWhiteColor),
              ),
              SizedBoxs.kSizedBoxHeight20,
              const TextFormFieldWidget(
                hintText: "Enter Your Email",
                icon: Icons.mail,
              ),
              SizedBoxs.kSizedBoxHeight20,
              const TextFormFieldWidget(
                hintText: "Enter Your Password",
                icon: Icons.lock,
              ),
              SizedBoxs.kSizedBoxHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CreateForgetButton(
                    text: "Create account",
                    color: AppColors.kWhiteColor,
                  ),
                  CreateForgetButton(
                    text: "Forget password?",
                    color: AppColors.kGreenColor,
                  ),
                ],
              ),
              Center(
                child: elevetedButtonLogin("Login", AppColors.kWhiteColor),
              ),
              SizedBoxs.kSizedBoxHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DividerOrWidget(
                    height: 10,
                    width: 150,
                    thickness: 1,
                    color: AppColors.kGrayColor600,
                  ),
                  Text(
                    "or",
                    style: GoogleFonts.acme(color: AppColors.kWhiteColor),
                  ),
                  DividerOrWidget(
                    height: 10,
                    width: 150,
                    thickness: 1,
                    color: AppColors.kGrayColor600,
                  ),
                ],
              ),
              SizedBoxs.kSizedBoxHeight10,
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        LoginSignUpImages.googleGLogo1,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Continue with Google",
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.kWhiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton elevetedButtonLogin(String text, Color color) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 8,
            backgroundColor: Colors.green,
            padding: const EdgeInsets.only(
              left: 153,
              right: 153,
              top: 20,
              bottom: 20,
            )),
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.acme(fontSize: 12, color: color),
        ),
      );
}
