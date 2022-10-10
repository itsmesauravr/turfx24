import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:turfx24/app/screens/login_signup/view/login/login_page.dart';
import 'package:turfx24/app/utilities/colors/background_color.dart';
import 'package:turfx24/app/utilities/images/images.dart';
import 'package:turfx24/app/utilities/texts/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.black,
        pages: [
          PageViewModel(
            title: "The largest network of sports facilities",
            body: AppText.turfTextBody,
            image: onBoardImage(
              path: Images.turfImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: AppColors.kOnBoard1,
            ),
          ),
          PageViewModel(
            title: "Football is the most popular sport in the world",
            body: AppText.footballTextBody,
            image: onBoardImage(
              path: Images.footballImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: AppColors.kOnBoard2,
            ),
          ),
          PageViewModel(
            title: "About the Sport of Badminton",
            body: AppText.badmintonTextBody,
            image: onBoardImage(
              path: Images.badmintonImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: AppColors.kOnBoard3,
            ),
          ),
          PageViewModel(
            title: "History and speciality of Cricket",
            body: AppText.cricketTextBody,
            image: onBoardImage(
              path: Images.cricketImage,
              width: 275,
            ),
            decoration: getPageDecoration(
              colors: AppColors.kOnBoard4,
            ),
          ),
          PageViewModel(
            title:
                "Time plays a key role in sports for athletes and broadcasters",
            body: AppText.clockTextBody,
            image: onBoardImage(
              path: Images.colockImage,
              width: 215,
            ),
            decoration: getPageDecoration(
              colors: AppColors.kOnBoard5,
            ),
          ),
        ],
        done: const Text(
          "Let's go",
          style: TextStyle(color: Colors.white),
        ),
        onDone: () => gotoSignIn(context),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        animationDuration: 1000,
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(color: Colors.white),
        ),
        dotsDecorator: getDotDecoration(),
        isProgress: true,
        showNextButton: true,
        freeze: false,
        curve: Curves.decelerate,
      ),
    );
  }

  Widget onBoardImage({required String path, required double width}) => Center(
        child: Image.asset(
          path,
          width: width,
        ),
      );
  PageDecoration getPageDecoration({required Color colors}) => PageDecoration(
        titleTextStyle: GoogleFonts.raleway(
          fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        bodyTextStyle: GoogleFonts.raleway(
          fontSize: 12,
          color: Colors.grey.shade900,
          fontWeight: FontWeight.w300,
        ),
        imagePadding: const EdgeInsets.all(24),
        pageColor: colors,
      );
  void gotoSignIn(context) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
  DotsDecorator getDotDecoration() => DotsDecorator(
        colors: [
          AppColors.kOnBoard1,
          AppColors.kOnBoard2,
          AppColors.kOnBoard3,
          AppColors.kOnBoard4,
          AppColors.kOnBoard5,
        ],
        activeColors: [
          AppColors.kOnBoard1,
          AppColors.kOnBoard2,
          AppColors.kOnBoard3,
          AppColors.kOnBoard4,
          AppColors.kOnBoard5,
        ],
        size: const Size(10, 10),
        activeSize: const Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
}
