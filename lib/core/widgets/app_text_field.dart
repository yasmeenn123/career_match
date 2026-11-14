import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({super.key, required this.hint, required this.label, this.prefixIcon,  this.isPassword=false});
  final String hint;
  final String label;

  final IconData? prefixIcon;
  final bool isPassword;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _hidden =true;
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label,style: AppTextStyle.labelLg,),
        SizedBox(
          height: AppSize.spaceSm,
        ),
        TextFormField(
          obscureText: widget.isPassword&& _hidden,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTextStyle.bodyMd.copyWith(color: AppColor.textSecondary),
            filled: true,
            fillColor: AppColor.surface,
            prefixIcon:widget.prefixIcon==null?null: Icon(widget.prefixIcon),
            suffixIcon: widget.isPassword?IconButton(onPressed: (){
            setState(() {
              _hidden=!_hidden;
            });
            }, icon: Icon(_hidden?
            Icons.visibility_off_outlined:
            Icons.visibility_outlined)):null,
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
