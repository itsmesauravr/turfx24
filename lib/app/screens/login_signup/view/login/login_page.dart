import 'package:flutter/material.dart';
import 'package:turfx24/app/screens/login_signup/widgets/eclipse_position.dart';
import 'package:turfx24/app/screens/login_signup/widgets/text_form_fields_container.dart';
import 'package:turfx24/app/utilities/colors/background_color.dart';
import 'package:turfx24/app/utilities/images/images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            const EclipsePosition(
              image: Images.topEclipse2,
              right: 0,
            ),
            const EclipsePosition(
              image: Images.topEclipse1,
              top: -40,
            ),
            const EclipsePosition(
              image: Images.topEclipse3,
              top: 20,
              left: 170,
            ),
            const EclipsePosition(
              image: Images.topEclipse4,
              top: 40,
              left: 100,
            ),
            const EclipsePosition(
              image: Images.bottomRectangle1,
              right: 40,
              bottom: -40,
            ),
            const EclipsePosition(
              image: Images.bottomEclipse5,
              right: 44,
              bottom: 10,
            ),
            const EclipsePosition(
              image: Images.bottomEclipse6,
              right: 60,
              bottom: 40,
            ),
            const EclipsePosition(
              image: Images.bottomEclipse7,
              right: 100,
              bottom: 40,
            ),
            const EclipsePosition(
              image: Images.footBallTop1,
              top: 22.5,
              left: 170,
            ),
            const EclipsePosition(
              image: Images.footBallTop2,
              top: 41,
              left: 100,
            ),
            const EclipsePosition(
              image: Images.footBallBottom3,
              right: 60,
              bottom: 39,
            ),
            const EclipsePosition(
              image: Images.footBallBottom4,
              right: 104,
              bottom: 45,
            ),
            TextFormFieldsContainer(),
          ],
        ),
      ),
    );
  }
}
