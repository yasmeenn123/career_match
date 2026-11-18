import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart' show AppColor;
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class UploadDropzone extends StatelessWidget {
  const UploadDropzone({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSize.radiusLg),
      child: Container(
        padding: EdgeInsets.all(AppSize.spaceXl),

        width: double.infinity,
        decoration: BoxDecoration(
          color:AppColor.blue.withValues(alpha: .06),
          borderRadius: BorderRadius.circular(AppSize.radiusLg),
          border: Border.all(color: AppColor.blue),

        ),
        child: Column(
          children: [
            Icon(Icons.cloud_upload_outlined,size: 56,color: AppColor.blue,),
            const SizedBox(height: AppSize.spaceMd),
            Text(
              'Tap to browse your document',
              style: AppTextStyle.labelLg.copyWith(color: AppColor.navy),
            ),
            const SizedBox(height: AppSize.spaceXs),
            Text(
              'PDF or DOCX, max 5MB',
              style: AppTextStyle.bodySm.copyWith(color: AppColor.textSecondary),
            ),


          ],
        ),
      ),
    ) ;
  }
}
