import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';

class AboutMeIntro extends StatelessWidget {
  const AboutMeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppBarHeaders.aboutMe.getString(),
            style: context.textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "${AppStrings.hello} ${AppStrings.developerName}, ${AppStrings.aboutMsg1}\n\n${AppStrings.aboutMsg2}\n\n${AppStrings.aboutMsg3}",
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? context.textTheme.bodySmall
              : context.textTheme.bodySmall,
          softWrap: true,
        ),
      ],
    );
  }
}
