import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'package:universal_html/html.dart' as html;

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .2,
          child: FittedBox(
            alignment: Alignment.topLeft,
            child: Text(
              AppStrings.developerName,
              style: context.textTheme.headlineMedium
                  ?.copyWith(color: context.colors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
