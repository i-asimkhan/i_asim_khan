import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'detailed_services_grid.dart';

class DetailedServicesSection extends StatelessWidget {
  const DetailedServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.servicesIOffer,
            style: context.textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: 32),
        const DetailedServicesGrid(),
      ],
    );
  }
}
