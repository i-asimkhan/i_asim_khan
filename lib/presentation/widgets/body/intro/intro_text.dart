import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? context.textTheme.bodySmall
              : context.textTheme.headlineLarge
                  ?.copyWith(color: context.colors.onSurface),
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.ipad.getMaxWidth()
              ? context.textTheme.titleMedium
              : context.textTheme.displayLarge,
          textAlign: _getTextAlign(context.width),
          softWrap: true,
        ),
        const SizedBox(height: 12),
        SizedBox(
            width: Responsive.isMobile(context)
                ? context.width - 20
                : context.width / 2.5,
            child: Column(
              children: [
                Text(
                  AppStrings.introMessageLine1 + AppStrings.introMessageLine2,
                  style: context.width < DeviceType.ipad.getMaxWidth()
                      ? context.textTheme.titleSmall
                      : context.textTheme.titleMedium,
                  textAlign: _getTextAlign(context.width),
                  softWrap: true,
                ),
                const SizedBox(height: 12),
                Text(
                  AppStrings.introMessageLine3,
                  style: context.width < DeviceType.ipad.getMaxWidth()
                      ? context.textTheme.titleSmall
                      : context.textTheme.titleMedium,
                  textAlign: _getTextAlign(context.width),
                  softWrap: true,
                ),
                const SizedBox(height: 12),
                Text(
                  AppStrings.introMessageLine4,
                  style: context.width < DeviceType.ipad.getMaxWidth()
                      ? context.textTheme.titleSmall
                      : context.textTheme.titleMedium,
                  textAlign: _getTextAlign(context.width),
                  softWrap: true,
                ),
              ],
            )),
        const SizedBox(height: 30),
        const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
