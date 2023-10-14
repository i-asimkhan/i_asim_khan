import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/utils/app_assets.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';
import 'package:i_asim_khan/core/utils/config/size_config.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.isMobile(context);

    return SizedBox(
      height: (SizeConfig.screenWidth / SizeConfig.oneThirdHeight) * 100,
      width: (SizeConfig.screenWidth / SizeConfig.oneThirdHeight) * 100,
      child: CircleAvatar(
        // radius: (SizeConfig.screenWidth / SizeConfig.halfHeight) * 100,
        backgroundColor: context.colors.primary,
        foregroundImage: const AssetImage(AppAssets.devImg),
      ),
    );
  }
}
