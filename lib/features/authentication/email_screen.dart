import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/gaps.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Gaps.v40,
            Text(
              'create username',
              style: TextStyle(
                fontSize: Sizes.size20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v10,
            Text(
              'You can always change it later',
              style: TextStyle(
                fontSize: Sizes.size16,
                color: Colors.black54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
