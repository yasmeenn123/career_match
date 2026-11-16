import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({super.key, required this.count, required this.currentIndex});
  final int count;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
count , (index)=>Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: index==currentIndex?AppColor.teal:AppColor.border,
          borderRadius: BorderRadius.circular(AppSize.radiusFull),
        ),
        height: 8,
        width: index==currentIndex?24:8,
      ),),

    );
  }
}