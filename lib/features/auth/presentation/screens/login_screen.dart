import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/widgets/app_button.dart';
import 'package:graduation_project/core/widgets/app_text_field.dart';
import 'package:graduation_project/features/auth/presentation/widgets/auth_header.dart';
import 'package:graduation_project/features/auth/presentation/widgets/remember_me_row.dart';
import 'package:graduation_project/features/auth/presentation/widgets/social_login_section.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
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
                AuthHeader(),
                const SizedBox(height: AppSize.spaceLg),
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
                RememberMeRow(
                  value: rememberMe,
                  onChanged: (v)=>setState(() {
                    rememberMe=v!;
                  }),
                  onForgotPassword: (){},
                ),
                const SizedBox(height: AppSize.spaceLg),
                AppButton(text: 'Sign In',onPressed: (){},),
                const SizedBox(height: AppSize.spaceMd),
                SocialLoginSection(),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
