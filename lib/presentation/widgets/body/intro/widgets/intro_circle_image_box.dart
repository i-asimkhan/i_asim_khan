import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/utils/app_assets.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircleAvatar(
        radius: Responsive.isMobile(context) ? 80 : 120,
        backgroundColor: context.colors.primary,
        foregroundImage: const AssetImage(AppAssets.devImg),
      ),
    );
  }
}
