import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/theme/app_color.dart';
import 'package:graduation_project/core/theme/app_size.dart';
import 'package:graduation_project/core/theme/app_text_style.dart';
import 'package:graduation_project/features/splash/presentation/widgets/splash_loader.dart';
import 'package:graduation_project/features/splash/presentation/widgets/splash_logo.dart';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
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
               SplashLogo(),
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
                SplashLoader(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
