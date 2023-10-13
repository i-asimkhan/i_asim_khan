import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_fonts.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static AppColors get lightColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xFFF4C95C),
        primaryLight: Color(0xFFF4C95C),
        lowPriority: Color(0xFFF4C95C),
        appBarColor: Color(0xFFF4C95C),
        onPrimary: Colors.black,
        secondary: Colors.white,
        onSecondary: Colors.black,
        error: Color(0xFFDB1A3A),
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Color(0xFFF5F5F5),
        onSurface: Colors.black,
        surfaceVariant: Color(0xFF8097A0),
        onSurfaceVariant: Color(0xFFBFCBD0),
        success: Color(0xFF063B4B),
        onSuccess: Colors.white,
      );

  static AppColors get darkColors => const AppColors(
        brightness: Brightness.dark,
        primary: Color(0xff7562E0),
        primaryLight: Color(0xff31313F),
        lowPriority: Color(0xff848191),
        appBarColor: Color(0xff181824),
        onPrimary: Color(0xffffffff),
        secondary: Color(0xff282162),
        onSecondary: Color(0xffffffff),
        error: Color(0xFFDB1A3A),
        onError: Colors.white,
        background: Color(0xff1A1A29),
        onBackground: Colors.white,
        surface: Color(0xff000036),
        onSurface: Colors.white,
        surfaceVariant: Color(0xFF8097A0),
        onSurfaceVariant: Color(0xFFBFCBD0),
        success: Color(0xFF063B4B),
        onSuccess: Colors.white,
      );

  static get theme {
    return ThemeData(
      primaryColor: lightColors.primary,
      highlightColor: lightColors.secondary,
      scaffoldBackgroundColor: lightColors.background,

      /// font family
      fontFamily: AppFonts.poppins,

      /// COLOR
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: lightColors.brightness,
        primary: lightColors.primary,
        onPrimary: lightColors.onPrimary,
        secondary: lightColors.secondary,
        onSecondary: lightColors.onSecondary,
        error: lightColors.error,
        onError: lightColors.onError,
        background: lightColors.background,
        onBackground: lightColors.onBackground,
        surface: lightColors.surface,
        onSurface: lightColors.onSurface,
        surfaceVariant: lightColors.surfaceVariant,
        onSurfaceVariant: lightColors.onSurfaceVariant,
      ),

      /// TYPOGRAPHY
      textTheme: TextTheme(
        displayLarge:
            AppTextTheme.displayLarge.copyWith(color: lightColors.onSurface),
        displayMedium:
            AppTextTheme.displayMedium.copyWith(color: lightColors.onSurface),
        displaySmall:
            AppTextTheme.displaySmall.copyWith(color: lightColors.onSurface),
        headlineLarge:
            AppTextTheme.headlineLarge.copyWith(color: lightColors.onSurface),
        headlineMedium:
            AppTextTheme.headlineMedium.copyWith(color: lightColors.onSurface),
        headlineSmall:
            AppTextTheme.headlineSmall.copyWith(color: lightColors.onSurface),
        titleLarge:
            AppTextTheme.titleLarge.copyWith(color: lightColors.onSurface),
        titleMedium:
            AppTextTheme.titleMedium.copyWith(color: lightColors.onSurface),
        titleSmall:
            AppTextTheme.titleSmall.copyWith(color: lightColors.onSurface),
        bodyLarge:
            AppTextTheme.bodyLarge.copyWith(color: lightColors.onSurface),
        bodyMedium:
            AppTextTheme.bodyMedium.copyWith(color: lightColors.onSurface),
        bodySmall:
            AppTextTheme.bodySmall.copyWith(color: lightColors.onSurface),
        labelLarge:
            AppTextTheme.labelLarge.copyWith(color: lightColors.onSurface),
        labelMedium:
            AppTextTheme.labelMedium.copyWith(color: lightColors.onSurface),
        labelSmall:
            AppTextTheme.labelSmall.copyWith(color: lightColors.onSurface),
      ),

      /// COMPONENT THEMES
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: lightColors.onBackground,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle:
              AppTextTheme.labelMedium.copyWith(color: lightColors.error),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: BorderSide(color: lightColors.onSurface),
          foregroundColor: lightColors.onSurface,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: lightColors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightColors.primaryLight,
        errorStyle: AppTextTheme.bodySmall.copyWith(color: lightColors.error),
        helperStyle: AppTextTheme.bodySmall
            .copyWith(color: lightColors.onSurfaceVariant),
        hintStyle: AppTextTheme.bodyMedium
            .copyWith(color: lightColors.onSurfaceVariant),
        focusedErrorBorder: _getBorder(lightColors.error),
        errorBorder: _getBorder(lightColors.error),
        focusedBorder: _getBorder(lightColors.primary),
        iconColor: lightColors.onSurfaceVariant,
        enabledBorder: _getBorder(lightColors.lowPriority),
        disabledBorder: _getBorder(Colors.transparent),
        errorMaxLines: 3,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: lightColors.primary,
        unselectedLabelColor: lightColors.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: lightColors.primary,
              width: 2,
            ),
          ),
        ),
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
      ),

      ///Extensions
      extensions: <ThemeExtension>[
        lightColors,
      ],
    );
  }

  static get darkTheme {
    return ThemeData(
      primaryColor: darkColors.primary,
      highlightColor: darkColors.secondary,
      scaffoldBackgroundColor: darkColors.background,

      /// font family
      fontFamily: AppFonts.poppins,

      /// COLOR
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: darkColors.brightness,
        primary: darkColors.primary,
        onPrimary: darkColors.onPrimary,
        secondary: darkColors.secondary,
        onSecondary: darkColors.onSecondary,
        error: darkColors.error,
        onError: darkColors.onError,
        background: darkColors.background,
        onBackground: darkColors.onBackground,
        surface: darkColors.surface,
        onSurface: darkColors.onSurface,
        surfaceVariant: darkColors.surfaceVariant,
        onSurfaceVariant: darkColors.onSurfaceVariant,
      ),

      /// TYPOGRAPHY
      textTheme: TextTheme(
        displayLarge:
            AppTextTheme.displayLarge.copyWith(color: darkColors.onSurface),
        displayMedium:
            AppTextTheme.displayMedium.copyWith(color: darkColors.onSurface),
        displaySmall:
            AppTextTheme.displaySmall.copyWith(color: darkColors.onSurface),
        headlineLarge:
            AppTextTheme.headlineLarge.copyWith(color: darkColors.onSurface),
        headlineMedium:
            AppTextTheme.headlineMedium.copyWith(color: darkColors.onSurface),
        headlineSmall:
            AppTextTheme.headlineSmall.copyWith(color: darkColors.onSurface),
        titleLarge:
            AppTextTheme.titleLarge.copyWith(color: darkColors.onSurface),
        titleMedium:
            AppTextTheme.titleMedium.copyWith(color: darkColors.onSurface),
        titleSmall:
            AppTextTheme.titleSmall.copyWith(color: darkColors.onSurface),
        bodyLarge: AppTextTheme.bodyLarge.copyWith(color: darkColors.onSurface),
        bodyMedium:
            AppTextTheme.bodyMedium.copyWith(color: darkColors.onSurface),
        bodySmall: AppTextTheme.bodySmall.copyWith(color: darkColors.onSurface),
        labelLarge:
            AppTextTheme.labelLarge.copyWith(color: darkColors.onSurface),
        labelMedium:
            AppTextTheme.labelMedium.copyWith(color: darkColors.onSurface),
        labelSmall:
            AppTextTheme.labelSmall.copyWith(color: darkColors.onSurface),
      ),

      /// COMPONENT THEMES
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: darkColors.onBackground,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: AppTextTheme.labelMedium.copyWith(color: darkColors.error),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: BorderSide(color: darkColors.onSurface),
          foregroundColor: darkColors.onSurface,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkColors.background,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: darkColors.primaryLight,
        errorStyle: AppTextTheme.bodySmall.copyWith(color: darkColors.error),
        helperStyle:
            AppTextTheme.bodySmall.copyWith(color: darkColors.onSurfaceVariant),
        hintStyle: AppTextTheme.bodyMedium
            .copyWith(color: darkColors.onSurfaceVariant),
        focusedErrorBorder: _getBorder(darkColors.error),
        errorBorder: _getBorder(darkColors.error),
        focusedBorder: _getBorder(darkColors.primary),
        iconColor: darkColors.onSurfaceVariant,
        enabledBorder: _getBorder(darkColors.lowPriority),
        disabledBorder: _getBorder(Colors.transparent),
        errorMaxLines: 3,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: darkColors.primary,
        unselectedLabelColor: darkColors.onSurfaceVariant,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: darkColors.primary,
              width: 2,
            ),
          ),
        ),
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
      ),

      ///Extensions
      extensions: <ThemeExtension>[
        darkColors,
      ],
    );
  }

  static OutlineInputBorder _getBorder(Color borderColor) => OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );
}
