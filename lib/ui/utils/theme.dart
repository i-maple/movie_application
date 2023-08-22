import 'package:flutter/material.dart';
import 'package:movie_application/ui/utils/colors.dart';

ThemeData kThemeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.actionButton),
  primaryColor: AppColors.primaryBackground,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: AppColors.primaryText,
      fontWeight: FontWeight.w600
    ),
    bodyLarge: TextStyle(
      color: AppColors.secondaryText,
    )
  ),
  scaffoldBackgroundColor: AppColors.primaryBackground,
  useMaterial3: true,
);
