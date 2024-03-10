import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: context.textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 8),
        // Text(
        //   AppStrings.projectsMsg,
        //   style: context.textTheme.titleSmall,
        //   softWrap: true,
        // ),
      ],
    );
  }
}
