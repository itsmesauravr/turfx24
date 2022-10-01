import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:turfx24/app/screens/login_signup/view/login_page.dart';
import 'package:turfx24/app/utilities/routes/app_routes.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      initialRoute: "/",
      routes: {
        Routes.HomePage: (context) => const LoginPage(),
      },
    );
  }
}
