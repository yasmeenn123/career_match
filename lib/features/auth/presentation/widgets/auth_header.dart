import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(title,style: AppTextStyle.displayLg.copyWith(
            color: AppColor.navy
        ),),
        const SizedBox(height: AppSize.spaceSm),
        Text(subtitle,
          style: AppTextStyle.bodyLg.copyWith(
            color: AppColor.textSecondary,
          ),
        ),

      ],
        );
  }
}
