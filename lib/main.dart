import 'package:flutter/material.dart';
import 'package:graduation_project/core/theme/app_theme.dart';
import 'package:graduation_project/core/widgets/app_button.dart';
import 'package:graduation_project/features/auth/presentation/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme:AppTheme.light,
      home: LoginScreen(),
    );
  }
}

