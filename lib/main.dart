import 'package:flutter/material.dart';
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
        primaryColor: const Color(0xFFE9435A),
      ),
      home: const SignUpScreen(),
    );
  }
}
