import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_text_field.dart';
import 'package:graduation_project/features/auth/presentation/widgets/auth_header.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_back)),
        title: Text('Register',style: TextStyle(
          color: AppColor.navy,
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthHeader(title: 'Create Candidate Account 🚀',

                  subtitle: 'Start matching with high-synergy tech roles in minutes.'),
              AppTextField(hint: 'Enter your name ', label: 'Full Name',
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: AppSize.spaceMd),

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
    );
  }
}
