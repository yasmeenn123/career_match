
import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, this.onPressed});
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: AppSize.buttonHeight,
      width: double.infinity,
      child: ElevatedButton(onPressed:onPressed,

          style: ElevatedButton.styleFrom(
            elevation: 0,
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(AppSize.radiusMd),

),
disabledBackgroundColor: AppColor.navy.withValues(alpha: .4),
backgroundColor: AppColor.navy,
            foregroundColor: AppColor.surface,
          ),
          child: Text(text,style: AppTextStyle.labelLg.copyWith(
            color: AppColor.surface,
          ))),
    );
  }
}
