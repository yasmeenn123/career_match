import 'package:flutter/material.dart';

import '../../../../core/theme/app_size.dart';

class CvProcessingScreen extends StatelessWidget {
  const CvProcessingScreen({super.key});

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
