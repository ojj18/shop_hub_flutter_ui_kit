import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_hub/features/auth/presentation/sign_in_page.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_textfield.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const SignInPage()),
          ),
          child: Icon(
            Platform.isAndroid ? Icons.arrow_forward : CupertinoIcons.back,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            const AppTextField(
              hint: "Enter your email",
              icon: Icons.email_outlined,
            ),

            const SizedBox(height: 30),

            AppButton(title: "Send Reset Link", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
