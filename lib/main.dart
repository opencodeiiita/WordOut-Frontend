import 'package:flutter/material.dart';
import 'package:word_out/screens/change_pass.dart';
import 'package:word_out/screens/recovery_code.dart';
import 'package:word_out/screens/search_screen.dart';
import 'package:word_out/screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screens',
      theme: ThemeData.dark(), // Dark theme for the app
      initialRoute: '/login',
      routes: {
        '/recover': (context) => const RecoveryCode(),
        '/change_pwd': (context) => ChangePass(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/search': (context) => const SearchScreen(),
        '/splash': (context) => const SplashScreen(),
      },
    );
  }
}
