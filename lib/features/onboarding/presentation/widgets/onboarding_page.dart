import 'package:flutter/material.dart';
import 'package:graduation_project/features/onboarding/presentation/models/onboarding_item.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/app_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.item});
  final OnboardingItem item;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.blue.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(AppSize.radiusXl),

          ),
          child:
           Icon(
            item.icon,
            size: 96,
            color: AppColor.blue,
          ),
        ),
        const SizedBox(height: AppSize.spaceLg),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: AppTextStyle.headlineLg.copyWith(color: AppColor.navy),
        ),
        const SizedBox(height: AppSize.spaceSm),
        Text(
item.description,          textAlign: TextAlign.center,
          style: AppTextStyle.bodyLg.copyWith(color: AppColor.textSecondary),
        ),


      ],
    );
  }
}
