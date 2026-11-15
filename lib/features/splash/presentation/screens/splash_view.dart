import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';

import '../../../../core/router/app_routes.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(milliseconds: 2500),(){
      if(!mounted)return;
      context.goNamed(AppRoutes.loginName);

    });
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.navy,


      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentGeometry.topRight,
              end: Alignment.bottomLeft,

              colors: [        AppColor.splashGlowBlue,
                AppColor.navy,
                AppColor.splashGlowTeal,
              ]),

        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.spaceLg),
            child: Column(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.surface.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.circular(AppSize.radiusXl),
                  ),
                  height: 96,
                  width: 96,
          child: const Icon(
            Icons.description_outlined,
            color: AppColor.surface,
            size: 44,),

                ),
                const SizedBox(height: AppSize.spaceLg),
                Text('AI CV & Job Match',
                textAlign: TextAlign.center,
                style: AppTextStyle.headlineLg.copyWith(color: AppColor.surface),),
                const SizedBox(height: AppSize.spaceSm),

                Text(
                  'Intelligent Career Engineering & Semantic Matching',
        textAlign: TextAlign.center,
                  style: AppTextStyle.bodyMd.copyWith(color: AppColor.splashSubtitle),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.radiusFull),
                  child: LinearProgressIndicator(
                    minHeight: 6,
                    color: AppColor.splashAccent,
                    backgroundColor: AppColor.surface.withValues(alpha: .15),
                  ),
                ),
                const SizedBox(height: AppSize.spaceSm),
                Text(
                  'Aligning Industry Career Benchmarks...',
                  style: AppTextStyle.bodySm.copyWith(color: AppColor.splashSubtitle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
