import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

      ],
        );
  }
}
