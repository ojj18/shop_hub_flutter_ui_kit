import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';
import 'core/theme/theme.dart';
import 'features/auth/presentation/forgot_password_page.dart';
import 'features/auth/presentation/sign_in_page.dart';
import 'features/auth/presentation/sign_up_page.dart';
import 'features/splash/presentation/splash_page.dart';

void main() {
  runApp(const ShopHubApp());
}

class ShopHubApp extends StatelessWidget {
  const ShopHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: "/",

      routes: {
        "/": (context) => const SplashPage(),

        AppRoutes.signIn: (context) => const SignInPage(),

        AppRoutes.signUp: (context) => const SignUpPage(),

        AppRoutes.forgotPassword: (context) => const ForgotPasswordPage(),
      },
    );
  }
}
