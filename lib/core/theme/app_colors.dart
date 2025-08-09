import 'package:flutter/material.dart';

class AppColors {
  // Base Colors - Used across both themes
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Brand Colors
  static const Color primaryBlue = Color(0xFF007AFF);
  static const Color primaryBlueDark = Color(0xFF0056CC);
  static const Color primaryBlueLight = Color(0xFF4DA6FF);

  static const Color secondaryGreen = Color(0xFF34C759);
  static const Color secondaryGreenDark = Color(0xFF28A745);
  static const Color secondaryGreenLight = Color(0xFF5ED46F);

  static const Color accentOrange = Color(0xFFFF9500);
  static const Color accentOrangeDark = Color(0xFFE6850E);
  static const Color accentOrangeLight = Color(0xFFFFAD33);

  static const Color errorRed = Color(0xFFFF3B30);
  static const Color errorRedDark = Color(0xFFD70015);
  static const Color errorRedLight = Color(0xFFFF6B60);

  // Priority Colors
  static const Color priorityHigh = Color(0xFFFF3B30);
  static const Color priorityMedium = Color(0xFFFF9500);
  static const Color priorityLow = Color(0xFF34C759);

  // Status Colors
  static const Color statusNotStarted = Color(0xFF9CA3AF);
  static const Color statusInProgress = Color(0xFF007AFF);
  static const Color statusCompleted = Color(0xFF34C759);

  // Light Theme Colors
  static const LightColors light = LightColors();

  // Dark Theme Colors
  static const DarkColors dark = DarkColors();
}

class LightColors {
  const LightColors();

  // Primary Colors
  Color get primary => AppColors.primaryBlue;

  Color get onPrimary => AppColors.white;
  Color get primaryDark => AppColors.primaryBlueDark;
  Color get primaryLight => AppColors.primaryBlueLight;

  // Secondary Colors
  Color get secondary => AppColors.secondaryGreen;
  Color get secondaryDark => AppColors.secondaryGreenDark;
  Color get secondaryLight => AppColors.secondaryGreenLight;

  // Accent Colors
  Color get accent => AppColors.accentOrange;
  Color get accentDark => AppColors.accentOrangeDark;
  Color get accentLight => AppColors.accentOrangeLight;

  // Error Colors
  Color get error => AppColors.errorRed;
  Color get errorDark => AppColors.errorRedDark;
  Color get errorLight => AppColors.errorRedLight;

  // Background Colors
  Color get background => const Color(0xFFF8F9FA);
  Color get surface => AppColors.white;
  Color get surfaceVariant => const Color(0xFFF1F3F4);

  // Text Colors
  Color get textPrimary => const Color(0xFF1A1A1A);
  Color get textSecondary => const Color(0xFF6B7280);
  Color get textHint => const Color(0xFF9CA3AF);
  Color get textDisabled => const Color(0xFFD1D5DB);
  Color get onSurface => const Color(0xFF1A1A1A);

  // Border & Divider Colors
  Color get border => const Color(0xFFE5E7EB);
  Color get divider => const Color(0xFFE5E7EB);
  Color get outline => const Color(0xFFE5E7EB);

  // Priority Colors
  Color get priorityHigh => AppColors.priorityHigh;
  Color get priorityMedium => AppColors.priorityMedium;
  Color get priorityLow => AppColors.priorityLow;

  // Status Colors
  Color get statusNotStarted => AppColors.statusNotStarted;
  Color get statusInProgress => AppColors.statusInProgress;
  Color get statusCompleted => AppColors.statusCompleted;
}

class DarkColors {
  const DarkColors();

  // Primary Colors
  Color get primary => AppColors.primaryBlueLight;

  Color get onPrimary => AppColors.white;
  Color get primaryDark => AppColors.primaryBlueDark;
  Color get primaryLight => AppColors.primaryBlue;

  // Secondary Colors
  Color get secondary => AppColors.secondaryGreenLight;
  Color get secondaryDark => AppColors.secondaryGreenDark;
  Color get secondaryLight => AppColors.secondaryGreen;

  // Accent Colors
  Color get accent => AppColors.accentOrangeLight;
  Color get accentDark => AppColors.accentOrangeDark;
  Color get accentLight => AppColors.accentOrange;

  // Error Colors
  Color get error => AppColors.errorRedLight;
  Color get errorDark => AppColors.errorRedDark;
  Color get errorLight => AppColors.errorRed;

  // Background Colors
  Color get background => const Color(0xFF121212);
  Color get surface => const Color(0xFF1E1E1E);
  Color get surfaceVariant => const Color(0xFF2C2C2C);

  // Text Colors
  Color get textPrimary => const Color(0xFFE1E1E1);
  Color get textSecondary => const Color(0xFFB0B0B0);
  Color get textHint => const Color(0xFF6B7280);
  Color get textDisabled => const Color(0xFF4B5563);
  Color get onSurface => const Color(0xFFE1E1E1);

  // Border & Divider Colors
  Color get border => const Color(0xFF374151);
  Color get divider => const Color(0xFF374151);
  Color get outline => const Color(0xFF374151);

  // Priority Colors
  Color get priorityHigh => AppColors.priorityHigh;
  Color get priorityMedium => AppColors.priorityMedium;
  Color get priorityLow => AppColors.priorityLow;

  // Status Colors
  Color get statusNotStarted => AppColors.statusNotStarted;
  Color get statusInProgress => AppColors.statusInProgress;
  Color get statusCompleted => AppColors.statusCompleted;
}

class AppDimensions {
  // Border Radius
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXLarge = 24.0;

  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 48.0;

  // Button Heights
  static const double buttonHeightSmall = 36.0;
  static const double buttonHeightMedium = 44.0;
  static const double buttonHeightLarge = 52.0;

  // Icon Sizes
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;

  // Elevation
  static const double elevationSmall = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationLarge = 8.0;
}

class AppTypography {
  // Font Weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Font Sizes
  static const double caption = 12.0;
  static const double body2 = 14.0;
  static const double body1 = 16.0;
  static const double subtitle2 = 18.0;
  static const double subtitle1 = 20.0;
  static const double headline6 = 22.0;
  static const double headline5 = 24.0;
  static const double headline4 = 28.0;
  static const double headline3 = 32.0;
}

class AppTextStyles {
  static TextStyle _baseStyle(Color color) => TextStyle(color: color);

  // Light Theme Text Styles
  static TextStyle h1Light = _baseStyle(
    AppColors.light.textPrimary,
  ).copyWith(fontSize: AppTypography.headline3, fontWeight: AppTypography.bold);

  static TextStyle h2Light = _baseStyle(
    AppColors.light.textPrimary,
  ).copyWith(fontSize: AppTypography.headline4, fontWeight: AppTypography.bold);

  static TextStyle h3Light = _baseStyle(AppColors.light.textPrimary).copyWith(
    fontSize: AppTypography.headline5,
    fontWeight: AppTypography.semiBold,
  );

  static TextStyle bodyLargeLight = _baseStyle(
    AppColors.light.textPrimary,
  ).copyWith(fontSize: AppTypography.body1, fontWeight: AppTypography.regular);

  static TextStyle bodyMediumLight = _baseStyle(
    AppColors.light.textPrimary,
  ).copyWith(fontSize: AppTypography.body2, fontWeight: AppTypography.regular);

  static TextStyle labelMediumLight = _baseStyle(
    AppColors.light.textPrimary,
  ).copyWith(fontSize: AppTypography.body2, fontWeight: AppTypography.medium);

  // Dark Theme Text Styles
  static TextStyle h1Dark = _baseStyle(
    AppColors.dark.textPrimary,
  ).copyWith(fontSize: AppTypography.headline3, fontWeight: AppTypography.bold);

  static TextStyle h2Dark = _baseStyle(
    AppColors.dark.textPrimary,
  ).copyWith(fontSize: AppTypography.headline4, fontWeight: AppTypography.bold);

  static TextStyle h3Dark = _baseStyle(AppColors.dark.textPrimary).copyWith(
    fontSize: AppTypography.headline5,
    fontWeight: AppTypography.semiBold,
  );

  static TextStyle bodyLargeDark = _baseStyle(
    AppColors.dark.textPrimary,
  ).copyWith(fontSize: AppTypography.body1, fontWeight: AppTypography.regular);

  static TextStyle bodyMediumDark = _baseStyle(
    AppColors.dark.textPrimary,
  ).copyWith(fontSize: AppTypography.body2, fontWeight: AppTypography.regular);

  static TextStyle labelMediumDark = _baseStyle(
    AppColors.dark.textPrimary,
  ).copyWith(fontSize: AppTypography.body2, fontWeight: AppTypography.medium);

  // Button Text Styles
  static TextStyle buttonLarge = const TextStyle(
    fontSize: AppTypography.body1,
    fontWeight: AppTypography.semiBold,
    color: AppColors.white,
  );
}
