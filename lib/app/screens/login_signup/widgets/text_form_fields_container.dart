import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:turfx24/app/screens/login_signup/widgets/create_forget_button.dart';
import 'package:turfx24/app/screens/login_signup/widgets/divider_or_widget.dart';
import 'package:turfx24/app/screens/login_signup/widgets/text_form_field_widget.dart';
import 'package:turfx24/app/utilities/colors/background_color.dart';
import 'package:turfx24/app/utilities/images/images.dart';
import 'package:turfx24/app/utilities/sizedbox.dart/sized_boxs.dart';
import 'package:turfx24/app/view_model/login/login_view_model.dart';

class TextFormFieldsContainer extends StatelessWidget {
  TextFormFieldsContainer({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loginPro = Provider.of<LoginViewModel>(context, listen: false);
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: size.height * 65 / 100,
        width: size.width * 85 / 100,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxs.kSizedBoxHeight80,
                Text(
                  "Login",
                  style: GoogleFonts.acme(color: AppColors.kWhiteColor),
                ),
                SizedBoxs.kSizedBoxHeight30,
                TextFormFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                  controller: loginPro.emailTextController,
                  hintText: "Enter Your Email",
                  icon: Icons.mail,
                  obscureText: false,
                ),
                SizedBoxs.kSizedBoxHeight20,
                TextFormFieldWidget(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    return null;
                  },
                  controller: loginPro.passWordTextController,
                  hintText: "Enter Your Password",
                  icon: Icons.lock,
                  obscureText: true,
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
                  child: elevetedButton(
                    "Login",
                    AppColors.kWhiteColor,
                    () {
                      loginPro.formLoginValidation(
                        key: _formKey.currentState!.validate(),
                        ctx: context,
                      );
                    },
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
                          Images.googleGLogo1,
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
      ),
    );
  }

  ElevatedButton elevetedButton(
          String text, Color color, void Function()? onPressed) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 8,
            backgroundColor: Colors.green,
            padding: const EdgeInsets.only(
              left: 130,
              right: 130,
              top: 20,
              bottom: 20,
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.acme(fontSize: 16, color: color),
        ),
      );
}
