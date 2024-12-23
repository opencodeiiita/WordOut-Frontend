import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:word_out/screens/signup_screen.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:word_out/screens/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // logic for shared pref.
  // Widget _checkUser() {
  //   return FutureBuilder<SharedPreferences>(
  //       future: SharedPreferences.getInstance(),
  //       builder:
  //           (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
  //         if (snapshot.connectionState == ConnectionState.waiting) {
  //           return const CircularProgressIndicator();
  //         } else {
  //           if (snapshot.hasError) {
  //             return const Text('Error loading preferences');
  //           } else {
  //             final prefs = snapshot.data;
  //             final token = prefs?.getString('token');
  //             if (token != null && token.isNotEmpty) {
  //               return const HomePage(); // Make sure to import HomePage
  //             } else {
  //               return const SignupScreen();
  //             }
  //           }
  //         }
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Curves.easeInOut,
      duration: 700,
      animationDuration: const Duration(milliseconds: 1500),
      splash: const Text(
        "WordOut",
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xFF0A0D16),
      pageTransitionType: PageTransitionType.rightToLeft,
      nextScreen: const HomePage() //replace with _checkuser(),
    );
  }
}
