import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';

class AuthButton extends StatelessWidget {
  final String text;
  const AuthButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Sizes.size14),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey.shade100,
            width: 2,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
