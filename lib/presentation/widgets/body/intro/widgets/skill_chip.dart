import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      elevation: 8.0,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      // avatar: Icon(
      //   Icons.tag,
      //   color: context.colors.onPrimary,
      //   size: 12,
      // ),
      backgroundColor: context.colors.primary,
      label: Text(
        '#$title',
        style: context.textTheme.labelMedium?.copyWith(),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
