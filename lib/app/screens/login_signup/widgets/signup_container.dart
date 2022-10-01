import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turfx24/app/screens/login_signup/widgets/create_forget_button.dart';
import 'package:turfx24/app/screens/login_signup/widgets/divider_or_widget.dart';
import 'package:turfx24/app/screens/login_signup/widgets/text_form_field_widget.dart';
import 'package:turfx24/app/screens/login_signup/widgets/text_form_fields_container.dart';
import 'package:turfx24/app/utilities/colors/background_color.dart';
import 'package:turfx24/app/utilities/images/login_signup_images.dart';
import 'package:turfx24/app/utilities/sizedbox.dart/sized_boxs.dart';

class SignUpContainer extends StatelessWidget {
  const SignUpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: size.height * 70 / 100,
        width: size.width * 85 / 100,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxs.kSizedBoxHeight30,
              Text(
                "Signup",
                style: GoogleFonts.acme(
                  color: AppColors.kWhiteColor,
                ),
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
              SizedBoxs.kSizedBoxHeight20,
              const TextFormFieldWidget(
                hintText: "Confirm Your Password",
                icon: Icons.lock,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CreateForgetButton(
                    text: "Already have an account?",
                    color: AppColors.kGreenColor,
                  ),
                ],
              ),
              Center(
                child: const TextFormFieldsContainer().elevetedButtonLogin(
                  "Signup",
                  AppColors.kWhiteColor,
                  () => Navigator.of(context).pop(),
                ),
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
                  const Text(
                    "or",
                    style: TextStyle(
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  DividerOrWidget(
                    height: 10,
                    width: 150,
                    thickness: 1,
                    color: AppColors.kGrayColor600,
                  ),
                ],
              ),
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
}
