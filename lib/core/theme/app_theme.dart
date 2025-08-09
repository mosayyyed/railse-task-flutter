import 'package:flutter/material.dart';
import 'package:task_manager_ui/core/theme/app_colors.dart';

class AppTheme {
  // Gradients
  static LinearGradient get primaryGradientLight => LinearGradient(
    colors: [AppColors.light.primary, AppColors.light.primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get primaryGradientDark => LinearGradient(
    colors: [AppColors.dark.primary, AppColors.dark.primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get secondaryGradientLight => LinearGradient(
    colors: [AppColors.light.secondary, AppColors.light.secondaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get secondaryGradientDark => LinearGradient(
    colors: [AppColors.dark.secondary, AppColors.dark.secondaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static ThemeData get lightTheme {
    final colors = AppColors.light;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Color Scheme
      colorScheme: ColorScheme.light(
        primary: colors.primary,
        primaryContainer: colors.primaryLight,
        secondary: colors.secondary,
        secondaryContainer: colors.secondaryLight,
        tertiary: colors.accent,
        tertiaryContainer: colors.accentLight,
        error: colors.error,
        errorContainer: colors.errorLight,
        surface: colors.surface,
        onSurface: colors.onSurface,
        surfaceContainerHighest: colors.background,
        onSurfaceVariant: colors.onSurface,
        outline: colors.outline,
        outlineVariant: colors.divider,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: colors.textPrimary,
          fontSize: AppTypography.headline6,
          fontWeight: AppTypography.semiBold,
        ),
        iconTheme: IconThemeData(color: colors.textPrimary),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: AppColors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingL,
            vertical: AppDimensions.spacingM,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.semiBold,
          ),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.border),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingL,
            vertical: AppDimensions.spacingM,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.semiBold,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingM,
            vertical: AppDimensions.spacingS,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.medium,
          ),
        ),
      ),

      // FloatingActionButton Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.primary,
        foregroundColor: AppColors.white,
        elevation: AppDimensions.elevationMedium,
        shape: const CircleBorder(),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.error, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacingM,
          vertical: AppDimensions.spacingM,
        ),
        hintStyle: TextStyle(
          color: colors.textHint,
          fontSize: AppTypography.body1,
        ),
        labelStyle: TextStyle(
          color: colors.textSecondary,
          fontSize: AppTypography.body1,
        ),
      ),

      // BottomSheet Theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.surface,
        elevation: AppDimensions.elevationLarge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDimensions.radiusXLarge),
            topRight: Radius.circular(AppDimensions.radiusXLarge),
          ),
        ),
      ),

      // SnackBar Theme
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.textPrimary,
        contentTextStyle: const TextStyle(
          color: AppColors.white,
          fontSize: AppTypography.body1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: AppDimensions.elevationMedium,
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: colors.divider,
        thickness: 1,
        space: 1,
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: colors.textSecondary, size: 24),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: AppTypography.headline3,
          fontWeight: AppTypography.bold,
          color: colors.textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: AppTypography.headline4,
          fontWeight: AppTypography.bold,
          color: colors.textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: AppTypography.headline5,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: AppTypography.headline6,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: AppTypography.subtitle1,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: AppTypography.subtitle2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.regular,
          color: colors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.regular,
          color: colors.textPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.regular,
          color: colors.textSecondary,
        ),
        labelLarge: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.medium,
          color: colors.textSecondary,
        ),
        labelSmall: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.regular,
          color: colors.textHint,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    final colors = AppColors.dark;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      // Color Scheme
      colorScheme: ColorScheme.dark(
        primary: colors.primary,
        primaryContainer: colors.primaryDark,
        secondary: colors.secondary,
        secondaryContainer: colors.secondaryDark,
        tertiary: colors.accent,
        tertiaryContainer: colors.accentDark,
        error: colors.error,
        errorContainer: colors.errorDark,
        surface: colors.surface,
        onSurface: colors.onSurface,
        surfaceContainerHighest: colors.surfaceVariant,
        onSurfaceVariant: colors.onSurface,
        outline: colors.outline,
        outlineVariant: colors.divider,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.textPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: colors.textPrimary,
          fontSize: AppTypography.headline6,
          fontWeight: AppTypography.semiBold,
        ),
        iconTheme: IconThemeData(color: colors.textPrimary),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: AppColors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingL,
            vertical: AppDimensions.spacingM,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.semiBold,
          ),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.border),
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingL,
            vertical: AppDimensions.spacingM,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.semiBold,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacingM,
            vertical: AppDimensions.spacingS,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
          ),
          textStyle: const TextStyle(
            fontSize: AppTypography.body1,
            fontWeight: AppTypography.medium,
          ),
        ),
      ),

      // FloatingActionButton Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.primary,
        foregroundColor: AppColors.black,
        elevation: AppDimensions.elevationMedium,
        shape: const CircleBorder(),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          borderSide: BorderSide(color: colors.error, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacingM,
          vertical: AppDimensions.spacingM,
        ),
        hintStyle: TextStyle(
          color: colors.textHint,
          fontSize: AppTypography.body1,
        ),
        labelStyle: TextStyle(
          color: colors.textSecondary,
          fontSize: AppTypography.body1,
        ),
      ),

      // BottomSheet Theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.surface,
        elevation: AppDimensions.elevationLarge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDimensions.radiusXLarge),
            topRight: Radius.circular(AppDimensions.radiusXLarge),
          ),
        ),
      ),

      // SnackBar Theme
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.surface,
        contentTextStyle: TextStyle(
          color: colors.textPrimary,
          fontSize: AppTypography.body1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: AppDimensions.elevationMedium,
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: colors.divider,
        thickness: 1,
        space: 1,
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: colors.textSecondary, size: 24),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: AppTypography.headline3,
          fontWeight: AppTypography.bold,
          color: colors.textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: AppTypography.headline4,
          fontWeight: AppTypography.bold,
          color: colors.textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: AppTypography.headline5,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: AppTypography.headline6,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: AppTypography.subtitle1,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: AppTypography.subtitle2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.semiBold,
          color: colors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: AppTypography.body1,
          fontWeight: AppTypography.regular,
          color: colors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.regular,
          color: colors.textPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.regular,
          color: colors.textSecondary,
        ),
        labelLarge: TextStyle(
          fontSize: AppTypography.body2,
          fontWeight: AppTypography.medium,
          color: colors.textPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.medium,
          color: colors.textSecondary,
        ),
        labelSmall: TextStyle(
          fontSize: AppTypography.caption,
          fontWeight: AppTypography.regular,
          color: colors.textHint,
        ),
      ),
    );
  }
}
