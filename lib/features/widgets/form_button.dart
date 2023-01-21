import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  const FormButton({super.key, required this.disabled});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          color: disabled ? Colors.grey : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(Sizes.size5),
        ),
        duration: const Duration(
          milliseconds: 150,
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(
            milliseconds: 150,
          ),
          style: TextStyle(
            color: disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: const Text(
            'Next',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
