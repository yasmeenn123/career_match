import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/router/app_routes.dart';
import 'package:graduation_project/features/onboarding/presentation/models/onboarding_item.dart';
import 'package:graduation_project/features/onboarding/presentation/widgets/onboarding_page.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/widgets/app_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final _controller =PageController();
  int currentPage=0;

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  void _onNext(){
    if(currentPage==onBoardingItems.length - 1){
      context.goNamed(AppRoutes.registerName);

    }
    else
      {
        _controller.nextPage(duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      }
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.spaceLg),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AI CV & Job Match',
                    style: AppTextStyle.headlineSm.copyWith(color: AppColor.navy),
                  ),
                  TextButton(
                    onPressed: () =>context.goNamed(AppRoutes.registerName),
                    child: Text(
                      'Skip',
                      style: AppTextStyle.labelLg.copyWith(color: AppColor.blue),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: AppSize.spaceMd),


              Expanded(
                child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      currentPage=index;
                    });
                  },
                  controller: _controller,
                  itemCount: onBoardingItems.length,
                  itemBuilder: (context,index)=>OnboardingPage(item: onBoardingItems[index]),
                ),
              ),
              const SizedBox(height: AppSize.spaceMd),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:               List.generate(
                    onBoardingItems.length
                    , (index)=>Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: index==currentPage?AppColor.teal:AppColor.border,
                    borderRadius: BorderRadius.circular(AppSize.radiusFull),
                  ),
                  height: 8,
                  width: index==currentPage?24:8,
                ),),

              ),
              const SizedBox(height: AppSize.spaceLg),
              AppButton(text: currentPage == onBoardingItems.length - 1?'Get Started':'Next Page', onPressed:_onNext),

            ],
          ),
        ),
      ),
    );
  }
}


