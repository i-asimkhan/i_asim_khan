import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.numOfExperience,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? context.textTheme.titleLarge?.copyWith(fontSize: 48)
              : context.textTheme.titleLarge?.copyWith(fontSize: 96),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Text(
            AppStrings.experienceMsg,
            style: _getExpMsgStyle(context, context.width),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  _getExpMsgStyle(BuildContext context, double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return context.textTheme.displayMedium
          ?.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return context.textTheme.displayMedium;
    } else {
      return context.textTheme.displayMedium
          ?.copyWith(fontWeight: FontWeight.w500);
    }
  }
}
