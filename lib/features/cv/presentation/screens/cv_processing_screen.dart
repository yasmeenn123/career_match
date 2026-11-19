import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/router/app_router.dart';

import '../../../../core/theme/app_size.dart';
import 'package:graduation_project/core/router/app_routes.dart';
class CvProcessingScreen extends StatefulWidget {
  const CvProcessingScreen({super.key});

  @override
  State<CvProcessingScreen> createState() => _CvProcessingScreenState();
}

class _CvProcessingScreenState extends State<CvProcessingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 4),(){
      if(!mounted)return;
      context.goNamed(AppRoutes.cvReviewName);

    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(AppSize.spaceLg),
        child: Center(
          child: Text('Analyzing Your CV...'),
        ),
      ),),
    );
  }
}
