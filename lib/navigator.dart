import 'package:flutter/material.dart';
import './Presentation/screens/signup_page.dart';
import './Presentation/screens/login_page.dart';
import './Presentation/screens/forgot_password.dart';
import './Presentation/screens/reset_password.dart';



void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const SignupPage(),
        '/login': (context) => const LoginPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
        '/reset_password': (context) => const ResetPasswordPage(),
      },
    );
  }
}
