import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class SplashLoader extends StatelessWidget {
  const SplashLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.radiusFull),
          child: LinearProgressIndicator(
            minHeight: 6,
            color: AppColor.splashAccent,
            backgroundColor: AppColor.surface.withValues(alpha: .15),
          ),
        ),
        const SizedBox(height: AppSize.spaceSm),
        Text(
          'Aligning Industry Career Benchmarks...',
          style: AppTextStyle.bodySm.copyWith(color: AppColor.splashSubtitle),
        ),
      ],
    );
  }
}
