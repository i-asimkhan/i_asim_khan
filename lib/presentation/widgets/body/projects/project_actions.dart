import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/widgets/custom_button.dart';
import 'package:i_asim_khan/data/models/project.dart';
import 'package:universal_html/html.dart' as html;

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Preview',
                backgroundColor: context.colors.primary,
                onPressed: () {
                  html.window.open(project.previewLink!, '_blank');
                },
              ),
            ),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'Github',
                borderColor: context.colors.primary,
                onPressed: () {
                  html.window.open(project.githubRepoLink!, '_blank');
                },
              ),
            ),
          ],
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'play store',
                borderColor: context.colors.primary,
                onPressed: () {
                  html.window.open(project.googlePlay!, '_blank');
                },
              ),
            ),
          ],
          if (project.previewLink == null &&
              project.githubRepoLink == null &&
              project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                borderColor: context.colors.primary,
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
}
