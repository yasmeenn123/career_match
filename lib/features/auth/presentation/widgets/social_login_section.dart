import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/widgets/social_login_button.dart';

import '../../../../core/app constants/app_assets.dart';
import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: AppColor.border,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'Or continue with',
              style: AppTextStyle.bodySm.copyWith(
                color: AppColor.textSecondary,
              ),
            ),
            const SizedBox(width: 12),

            const Expanded(
              child: Divider(
                thickness: 1,
                color: AppColor.border,
              ),
            ),

          ],
        ),
        const SizedBox(height: AppSize.spaceLg),

        const SizedBox(height: AppSize.spaceMd),
         Row(
          children: [
            SocialLoginButton(title: 'Google', imagePath: AppAssets.google, onPressed: (){}),
            const SizedBox(width: AppSize.spaceMd),

            SocialLoginButton(title: 'LinkedIn', imagePath: AppAssets.linkedin, onPressed: (){}),

          ],
        )


      ],
    );
  }
}
