import 'package:flutter/material.dart';
import 'package:flutter_app/core/style/dimens.dart';

class AppColors {
  static const Color primary = Color(0xFF1E88E5);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFFFFC107);
  static const Color background = Color(0xFFF5F5F5);
  static const Color textPrimary = Color(0xFF212121);
  static const Color error = Color(0xFFD32F2F);
}

ThemeData get appThemeData {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      surface: AppColors.background,
      error: AppColors.error,
    ),
    scaffoldBackgroundColor: AppColors.background,
    useMaterial3: true,
    fontFamily: 'Roboto',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.paddingMedium,
          horizontal: Dimens.paddingLarge,
        ),
        textStyle: const TextStyle(
          fontSize: Dimens.fontSizeBody,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMedium),
        borderSide: const BorderSide(color: AppColors.error, width: 2.0),
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: Dimens.paddingMedium,
        horizontal: Dimens.paddingMedium,
      ),
      labelStyle: const TextStyle(fontSize: Dimens.fontSizeBody),
      hintStyle: TextStyle(fontSize: Dimens.fontSizeBody, color: Colors.grey),
      prefixIconColor: Colors.grey.shade600,
      suffixIconColor: Colors.grey.shade600,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: Dimens.fontSizeBody,
        color: AppColors.textPrimary,
      ),
      titleMedium: TextStyle(
        fontSize: Dimens.fontSizeTitle,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: Dimens.fontSizeBody,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
