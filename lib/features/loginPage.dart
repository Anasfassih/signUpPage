import 'package:flutter/material.dart';
import '../core/Custom_appButtons.dart';
import '../core/Custom_textFields.dart';
import '../core/Custom_appColors.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(hintText: 'Email', controller: emailController),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 24),
            CustomButton(
              color: AppColors.white,
              text: 'Login',
              onPressed: () {
                // Handle login
              },
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: Text("Don't have an account? Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
