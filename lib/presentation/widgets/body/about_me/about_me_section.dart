import 'package:flutter/material.dart';
import 'about_me_intro.dart';
import 'basic_services_grid.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutMeIntro(),
          SizedBox(height: 48),
          // const ExperienceInfo(),
          // const SizedBox(height: 58),
          BasicServicesGrid(),
          // const SizedBox(height: 80),
          // const DetailedServicesSection(),
        ],
      ),
    );
  }
}
