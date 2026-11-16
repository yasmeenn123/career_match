import 'package:flutter/material.dart';
class OnboardingItem {
  const OnboardingItem({required this.icon, required this.title, required this.description});
  final IconData icon;
  final String title;
  final String description;

}
  const List<OnboardingItem> onBoardingItems=[
  OnboardingItem(
    icon: Icons.description_outlined,
    title: 'Upload Once, Match Accurately',
    description:
    'Smart parser extracts 90+ technical competencies, deep architectural proficiencies, and stacks automatically.',
  ),
  OnboardingItem(
    icon: Icons.insights_outlined,
    title: 'See How Well You Match',
    description:
    'Every job shows a match score, the skills you have, and the ones you are missing.',
  ),
  OnboardingItem(
    icon: Icons.send_outlined,
    title: 'Apply With Confidence',
    description:
    'Apply directly or through the company website, and track every application in one place.',
  ),
];