import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  void _showNotImplementedMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Message'),
          content: const Text('Need to implement'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const FlutterLogo(size: 80),
                const SizedBox(height: 40),

                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text('Email:', style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 6),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),

                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text('Password:', style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 6),
                const TextField(
                  obscureText: true,
                ),
                const SizedBox(height: 24),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: const Text('Sign up'),
                ),
                const SizedBox(height: 12),

                ElevatedButton(
                  onPressed: () => _showNotImplementedMessage(context),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 12),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                    );
                  },
                  child: const Text('Reset password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
