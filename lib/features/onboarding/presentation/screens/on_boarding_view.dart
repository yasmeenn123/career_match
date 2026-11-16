import 'package:flutter/material.dart';
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
                    onPressed: () {},
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
              Row(
                children:               List.generate(
                    onBoardingItems.length
                    , (index)=>Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: index==currentPage?AppColor.teal:AppColor.border,
                    borderRadius: BorderRadius.circular(AppSize.radiusXl),
                  ),
                  width: index==currentPage?8:4,


                ),),

              ),
              AppButton(text: 'Get Started', onPressed: () {}),

            ],
          ),
        ),
      ),
    );
  }
}


