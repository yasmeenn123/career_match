import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

class RememberMeRow extends StatelessWidget {
  const RememberMeRow({
    super.key,
    required this.value,
    required this.onChanged,
    required this.onForgotPassword,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final VoidCallback onForgotPassword;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: value,
              activeColor: AppColor.navy,
              onChanged: onChanged,
            ),
            Text('Remember me', style: AppTextStyle.bodyMd),
          ],
        ),
        TextButton(
          onPressed: onForgotPassword,
          child: Text(
            'Forgot Password?',
            style: AppTextStyle.labelLg.copyWith(color: AppColor.teal),
          ),
        ),
      ],
    );
  }
}