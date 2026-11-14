import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, required this.hint, required this.label, this.prefixIcon});
  final String hint;
  final String label;

  final IconData? prefixIcon;




  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: AppTextStyle.labelLg,),
        SizedBox(
          height: AppSize.spaceSm,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyle.bodyMd.copyWith(color: AppColor.textSecondary),
            filled: true,
            fillColor: AppColor.surface,
            prefixIcon:prefixIcon==null?null: Icon(prefixIcon),
            enabledBorder: OutlineInputBorder(
borderSide: BorderSide(
  width: 1.5,

  color: AppColor.border,
),
              borderRadius: BorderRadius.circular(AppSize.radiusMd),

            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: AppColor.blue,
              ),
              borderRadius: BorderRadius.circular(AppSize.radiusMd),

            ),

          ),

        ),

      ],

    );
  }
}
