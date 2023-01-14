import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/gaps.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Gaps.v80,
              Text(
                'Sign up for TikTok',
                style: TextStyle(fontSize: Sizes.size24, fontWeight: FontWeight.w800),
              ),
              Gaps.v20,
              Text(
                "Create a profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: Sizes.size16),
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: Sizes.size16, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
