import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';
import 'package:i_asim_khan/core/utils/config/size_config.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  final String imagePath;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 52,
            width: 52,
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: Responsive.isMobile(context)
                ? SizeConfig.halfWidth
                : SizeConfig.quarterWidth,
            child: Text(
              title,
              style: context.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
