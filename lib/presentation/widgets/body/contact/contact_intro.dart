import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/presentation/widgets/body/contact/social_medial_icons.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.contactWithMe,
            style: context.textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: context.textTheme.displayMedium,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        const SocialMediaIcons(),
      ],
    );
  }
}