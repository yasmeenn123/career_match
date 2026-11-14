import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';
import 'package:graduation_project/core/widgets/app_text_field.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back)),
        title: Text('Login',style: TextStyle(
          color: AppColor.navy,
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.spaceMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Welcome Back 👋',style: AppTextStyle.displayLg.copyWith(
                  color: AppColor.navy
                ),),
                const SizedBox(height: AppSize.spaceSm),
                Text('Sign in to access your matched jobs and AI application tracker.',
                  style: AppTextStyle.bodyLg.copyWith(
                  color: AppColor.textSecondary,
                ),
                ),
                const SizedBox(height: AppSize.spaceSm),
                const AppTextField(
                  label: 'Email Address',
                  hint: 'Enter your email',
                  prefixIcon: Icons.email_outlined,
                ),
                const SizedBox(height: AppSize.spaceMd),
                const AppTextField(
                  label: 'Password',
                  hint: 'Enter your password',
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
