import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brightness,
    required this.primary,
    required this.primaryLight,
    required this.appBarColor,
    required this.lowPriority,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.error,
    required this.onError,
    required this.success,
    required this.onSuccess,
    required this.linkColor,
  });

  final Brightness brightness;
  final Color primary;
  final Color primaryLight;
  final Color appBarColor;
  final Color lowPriority;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color error;
  final Color onError;
  final Color success;
  final Color onSuccess;
  final Color linkColor;

  @override
  ThemeExtension<AppColors> copyWith({
    Brightness? brightness,
    Color? primary,
    Color? primaryLight,
    Color? appBarColor,
    Color? lowPriority,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? surfaceVariant,
    Color? onSurfaceVariant,
    Color? cardBgColor,
    Color? error,
    Color? onError,
    Color? success,
    Color? onSuccess,
    Color? linkColor,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      primaryLight: primaryLight ?? this.primaryLight,
      appBarColor: appBarColor ?? this.appBarColor,
      lowPriority: lowPriority ?? this.lowPriority,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      surfaceVariant: surfaceVariant ?? this.surfaceVariant,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      linkColor: linkColor ?? this.linkColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      brightness: brightness,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      primaryLight:
          Color.lerp(primaryLight, other.primaryLight, t) ?? primaryLight,
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t) ?? appBarColor,
      lowPriority: Color.lerp(lowPriority, other.lowPriority, t) ?? lowPriority,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t) ?? onPrimary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t) ?? onSecondary,
      background: Color.lerp(background, other.background, t) ?? background,
      onBackground:
          Color.lerp(onBackground, other.onBackground, t) ?? onBackground,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      onSurface: Color.lerp(onSurface, other.onSurface, t) ?? onSurface,
      surfaceVariant:
          Color.lerp(surfaceVariant, other.surfaceVariant, t) ?? surfaceVariant,
      onSurfaceVariant:
          Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t) ??
              onSurfaceVariant,
      error: Color.lerp(error, other.error, t) ?? error,
      onError: Color.lerp(onError, other.onError, t) ?? onError,
      success: Color.lerp(success, other.success, t) ?? success,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
      linkColor: Color.lerp(linkColor, other.linkColor, t) ?? linkColor,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
