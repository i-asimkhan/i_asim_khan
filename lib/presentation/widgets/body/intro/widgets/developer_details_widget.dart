import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'package:i_asim_khan/core/utils/app_urls.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperDetailsWidget extends StatelessWidget {
  const DeveloperDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? defaultStyle = context.textTheme.bodyMedium
        ?.copyWith(color: context.colors.onBackground);
    TextStyle? linkStyle =
        context.textTheme.bodyMedium?.copyWith(color: context.colors.primary);
    TextStyle? seperatorStyle =
        context.textTheme.bodyMedium?.copyWith(color: context.colors.primary);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          AppStrings.developerName,
          style: context.textTheme.displayMedium,
          textAlign: TextAlign.start,
          softWrap: true,
        ),
        RichText(
          text: TextSpan(
            style: defaultStyle,
            children: <TextSpan>[
              const TextSpan(
                text: AppStrings.developerPosition,
              ),
              const TextSpan(
                text: ' at ',
              ),
              TextSpan(
                text: '#${AppStrings.tags.dtcc}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.tags.dtcc)),
              ),
              TextSpan(
                text: ' || ',
                style: defaultStyle,
              ),
              const TextSpan(text: 'Building Next-Gen '),
              TextSpan(
                text: '@${AppStrings.skills.finTech}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.skills.finTech)),
              ),
              const TextSpan(text: ' Solutions'),
              TextSpan(
                text: ' || ',
                style: defaultStyle,
              ),
              const TextSpan(text: 'Former '),
              TextSpan(
                text: '#${AppStrings.skills.flutter}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.skills.flutter)),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: '#${AppStrings.skills.ios}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.skills.ios)),
              ),
              const TextSpan(text: ' Engineer '),
              TextSpan(
                text: '@${AppStrings.tags.dtcc}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.tags.dtcc)),
              ),
              TextSpan(
                text: ' ',
                style: defaultStyle,
              ),
              TextSpan(
                text: '#${AppStrings.tags.abuDhabi}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.tags.abuDhabi)),
              ),
              TextSpan(
                text: ' || ',
                style: defaultStyle,
              ),
              TextSpan(
                text: '#${AppStrings.skills.smartContracts}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag +
                          AppStrings.skills.smartContracts)),
              ),
              TextSpan(
                text: ' and ',
                style: defaultStyle,
              ),
              TextSpan(
                text: '#${AppStrings.skills.solidity}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag + AppStrings.skills.solidity)),
              ),
              TextSpan(
                text: ' Developer ',
                style: defaultStyle,
              ),
              TextSpan(
                text: ' || ',
                style: defaultStyle,
              ),
              TextSpan(
                text: '#${AppStrings.skills.openSource}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag +
                          AppStrings.skills.openSource)),
              ),
              TextSpan(
                text: ' advocate and ',
                style: defaultStyle,
              ),
              TextSpan(
                text: '#${AppStrings.skills.techSpeaker}',
                style: linkStyle,
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(
                      AppStrings.twitterHashtag +
                          AppStrings.skills.techSpeaker)),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () => launchUrl(AppUrls.linkToAbuDhabi),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Row(
            children: [
              Icon(
                Icons.location_pin,
                size: 18,
                color: context.colors.onSurfaceVariant,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                AppStrings.abuDhabiUAE,
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colors.onSurfaceVariant,
                ),
              )
            ],
          ),
        ),
        TextButton(
          onPressed: () => launchUrl(AppUrls.linkToTwitterProfile),
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Row(
            children: [
              Text(
                AppStrings.letsConnect,
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colors.linkColor,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Icon(
                Icons.open_in_new,
                size: 18,
                color: context.colors.linkColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
