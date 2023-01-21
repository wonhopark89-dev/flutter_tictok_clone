import 'package:flutter/material.dart';
import 'package:flutter_tictok_clone/constants/gaps.dart';
import 'package:flutter_tictok_clone/constants/sizes.dart';
import 'package:flutter_tictok_clone/features/authentication/birthday_screen.dart';
import 'package:flutter_tictok_clone/features/widgets/form_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  String _password = '';
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  bool _isPasswordValid() {
    return _password.isNotEmpty && _password.length >= 8;
  }

  void _onSubmit() {
    if (!_isPasswordValid()) {
      return;
    }
    // go to password screen
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const BirthdayScreen(),
      ),
    );
  }

  void _onClearTap() {
    _passwordController.clear();
  }

  void _onToggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
                'Password',
                style: TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v16,
              TextField(
                controller: _passwordController,
                cursorColor: Theme.of(context).primaryColor,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscureText,
                autocorrect: false,
                onEditingComplete: _onSubmit,
                decoration: InputDecoration(
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: _onClearTap,
                        child: FaIcon(
                          FontAwesomeIcons.circleXmark,
                          color: Colors.grey.shade400,
                          size: Sizes.size20,
                        ),
                      ),
                      Gaps.h10,
                      GestureDetector(
                        onTap: _onToggleObscureText,
                        child: FaIcon(
                          _obscureText ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                          color: Colors.grey.shade400,
                          size: Sizes.size20,
                        ),
                      ),
                    ],
                  ),
                  hintText: 'Make it strong!',
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
              const Text(
                'Password must be have:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Gaps.v10,
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.circleCheck,
                    size: Sizes.size20,
                    color: _isPasswordValid() ? Colors.green : Colors.grey.shade400,
                  ),
                  Gaps.h10,
                  const Text('8 to 20 characters'),
                ],
              ),
              Gaps.v10,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                  disabled: !_isPasswordValid(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
