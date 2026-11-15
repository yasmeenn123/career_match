import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        boxShadow:[ BoxShadow(
          blurRadius: 40,
          spreadRadius: 2,
          color: AppColor.splashAccent.withValues(alpha: .25),
        ),],
        color: AppColor.navy,
        borderRadius: BorderRadius.circular(AppSize.radiusXl),
      ),
      height: 96,
      width: 96,
      child: const Icon(
        Icons.description_outlined,
        color: AppColor.surface,
        size: 44,),

    )
    ;
  }
}
