import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_color.dart';

import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class UploadedFileCard extends StatelessWidget {
  const UploadedFileCard({super.key, required this.fileName, required this.onDelete});
  final String fileName;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(AppSize.spaceMd),
      decoration: BoxDecoration(
        color: AppColor.surface,
        borderRadius: BorderRadius.circular(AppSize.radiusMd),
        border: Border.all(color: AppColor.border),
      ),
      child: Row(
        children: [
          const Icon(Icons.insert_drive_file_outlined, color: AppColor.blue),
          const SizedBox(width: AppSize.spaceSm),
Expanded(
  child: Text(fileName,overflow: TextOverflow.ellipsis,
    style: AppTextStyle.bodyMd.copyWith(color: AppColor.navy),
  ),
),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.delete_outline),
          ),


        ],
      ),
    );
  }
}
