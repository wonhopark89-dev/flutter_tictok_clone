import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';
import 'package:flutter_tictok_clone/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const TictokApp());
}

class TictokApp extends StatelessWidget {
  const TictokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tictok Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: Sizes.size20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        primaryColor: const Color(0xFFE9435A),
      ),
      home: const SignUpScreen(),
    );
  }
}
