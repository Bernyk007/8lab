import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
                const SizedBox(height: 20),
                const Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 30),

                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text('Email:', style: TextStyle(fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 6),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () => _showNotImplementedMessage(context),
                  child: const Text('Reset'),
                ),
                const SizedBox(height: 12),

                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
