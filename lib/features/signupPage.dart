import 'package:flutter/material.dart';
import '../core/Custom_appButtons.dart';
import '../core/Custom_textFields.dart';
import '../core/Custom_appColors.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(hintText: 'User Name', controller: userNameController),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Email', controller: emailController),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Confirm Password',
              controller: confirmPasswordController,
              obscureText: true,
            ),
            SizedBox(height: 24),
            CustomButton(
              color: AppColors.blue,
              text: 'Sign Up',
              onPressed: () {
                
              },
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text("Already have an account? Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
