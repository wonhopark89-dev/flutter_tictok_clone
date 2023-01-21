import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/gaps.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';
import 'package:flutter_tictok_clone/features/authentication/password_screen.dart';
import 'package:flutter_tictok_clone/features/widgets/form_button.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  String _email = '';

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      print(_emailController.text);
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // check email valid
  String? _isValidEmail() {
    if (_email.isEmpty) {
      return null;
    }
    final rexExp = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
      caseSensitive: false,
      multiLine: false,
    );
    if (!rexExp.hasMatch(_email)) {
      return 'Email is not valid';
    }
    return null;
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    if (_email.isEmpty || _isValidEmail() != null) {
      return;
    }
    // go to password screen
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PasswordScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign up'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v40,
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v10,
              const Text(
                'What is your email?',
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black54,
                ),
              ),
              Gaps.v16,
              TextField(
                controller: _emailController,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                onEditingComplete: _onSubmit,
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: _isValidEmail(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              Gaps.v16,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                  disabled: _email.isEmpty || _isValidEmail() != null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
