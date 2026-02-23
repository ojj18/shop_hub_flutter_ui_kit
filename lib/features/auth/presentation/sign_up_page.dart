import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_hub/features/auth/presentation/sign_in_page.dart';
import '../../../../core/widgets/app_textfield.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/theme/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              "Create Account",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Sign up to get started"),
            const SizedBox(height: 30),
            const Text("Full Name"),
            const SizedBox(height: 8),
            const AppTextField(
              hint: "Enter your name",
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
            const Text("Email"),
            const SizedBox(height: 8),
            const AppTextField(
              hint: "Enter your email",
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 20),
            const Text("Password"),
            const SizedBox(height: 8),
            const AppTextField(
              hint: "Create a password",
              icon: Icons.lock_outline,
              isPassword: true,
            ),
            const SizedBox(height: 30),
            AppButton(
              title: "Sign Up",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signUp);
              },
            ),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 15,
                            color: AppTheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
