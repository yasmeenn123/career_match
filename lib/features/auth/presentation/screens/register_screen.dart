import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/widgets/auth_header.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: ,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthHeader(title: 'Create Candidate Account 🚀', subtitle: 'Start matching with high-synergy tech roles in minutes.')
              
            ],
          ),
        ),
      ),
    );
  }
}
