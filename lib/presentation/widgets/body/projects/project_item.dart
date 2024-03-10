import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/data/models/project.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.colors.primaryLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(imageUrl: project.imageUrl),
          const SizedBox(height: 12),
          FittedBox(
            child: Text(
              project.title,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.colors.onSurface),
            ),
          ),
          const SizedBox(height: 4),
          FittedBox(
            child: Text(
              project.subTitle,
              style: context.textTheme.titleSmall?.copyWith(
                color: context.colors.primary,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: AutoSizeText(
              project.description,
              style: context.textTheme.bodySmall,
              minFontSize: 12,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 8),
          ProjectActions(project: project)
        ],
      ),
    );
  }
}
