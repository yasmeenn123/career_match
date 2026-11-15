import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_size.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text_style.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.title, required this.imagePath, required this.onPressed});
  final String title;
  final String imagePath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Expanded(child: OutlinedButton(onPressed: (){},
        style: OutlinedButton.styleFrom(
          side: BorderSide.none,
          backgroundColor: AppColor.background,
          padding: EdgeInsets.symmetric(vertical: AppSize.spaceMd),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.radiusLg),
          ),
        ),
        child:Row(
      children: [
        Image.asset(imagePath,width:20 ,height: 20,),
        SizedBox(width: 8,),
        Text(
          title,
          style: AppTextStyle.bodyMd.copyWith(
            color: AppColor.navy,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ) ),);
  }
}
