import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const String fontFamily = 'Inter';

  static const TextStyle headingXL = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingLG = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headingMD = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyLG = TextStyle(
    fontSize: 18,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodyMD = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodySM = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );
}
