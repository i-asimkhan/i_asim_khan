import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/utils/app_assets.dart';
import 'package:i_asim_khan/core/utils/app_strings.dart';
import 'package:i_asim_khan/core/utils/app_urls.dart';
import 'package:i_asim_khan/core/utils/config/responsive.dart';
import 'package:i_asim_khan/presentation/widgets/body/intro/widgets/company_logo_item.dart';
import 'package:i_asim_khan/presentation/widgets/body/intro/widgets/description_widget.dart';
import 'package:i_asim_khan/presentation/widgets/body/intro/widgets/developer_details_widget.dart';
import 'package:i_asim_khan/presentation/widgets/body/intro/widgets/skill_chip.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/intro_circle_image_box.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 400,
              child: CarouselSlider(
                items: <String>[
                  AppAssets.sliderImage1,
                  AppAssets.sliderImage2,
                  AppAssets.sliderImage3,
                  AppAssets.sliderImage4,
                  AppAssets.sliderImage5,
                  AppAssets.sliderImage6,
                  AppAssets.sliderImage7,
                ].map(
                  (name) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            name,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1200),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Responsive.isMobile(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DeveloperDetailsWidget(),
                      DescriptionWidget(
                        imagePath: AppAssets.dtccLogo,
                        title: AppStrings.dtcc,
                        onTap: () => launchUrl(AppUrls.linkToDtcc),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      DescriptionWidget(
                        imagePath: AppAssets.uetPeshawarLogo,
                        title: AppStrings.uetPeshawar,
                        onTap: () => launchUrl(AppUrls.linkToUetPesh),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      skills,
                      const SizedBox(
                        height: 24,
                      ),
                      companies,
                    ],
                  )
                : SizedBox(
                    height: 350,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: DeveloperDetailsWidget(),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  DescriptionWidget(
                                    imagePath: AppAssets.dtccLogo,
                                    title: AppStrings.dtcc,
                                    onTap: () => launchUrl(AppUrls.linkToDtcc),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  DescriptionWidget(
                                    imagePath: AppAssets.uetPeshawarLogo,
                                    title: AppStrings.uetPeshawar,
                                    onTap: () =>
                                        launchUrl(AppUrls.linkToUetPesh),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 25,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: skills),
                                Expanded(child: companies),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
        const Positioned(
          top: 280,
          right: 25,
          child: IntroCircleImageBox(),
        )
      ],
    );
  }

  Widget get skills => Wrap(
        spacing: 18,
        runSpacing: 12,
        children: [
          SkillChip(
            title: AppStrings.skills.solidity,
            onPressed: () => launchUrl(Uri.parse(
                AppStrings.twitterHashtag + AppStrings.skills.solidity)),
          ),
          SkillChip(
            title: AppStrings.skills.rust,
            onPressed: () => launchUrl(
                Uri.parse(AppStrings.twitterHashtag + AppStrings.skills.rust)),
          ),
          SkillChip(
            title: AppStrings.skills.flutter,
            onPressed: () => launchUrl(Uri.parse(
                AppStrings.twitterHashtag + AppStrings.skills.flutter)),
          ),
          SkillChip(
            title: AppStrings.skills.ios,
            onPressed: () => launchUrl(
                Uri.parse(AppStrings.twitterHashtag + AppStrings.skills.ios)),
          ),
          SkillChip(
            title: AppStrings.skills.android,
            onPressed: () => launchUrl(Uri.parse(
                AppStrings.twitterHashtag + AppStrings.skills.android)),
          ),
          SkillChip(
            title: AppStrings.skills.dart,
            onPressed: () => launchUrl(
                Uri.parse(AppStrings.twitterHashtag + AppStrings.skills.dart)),
          ),
          SkillChip(
            title: AppStrings.skills.swift,
            onPressed: () => launchUrl(
                Uri.parse(AppStrings.twitterHashtag + AppStrings.skills.swift)),
          ),
          SkillChip(
            title: AppStrings.skills.swiftUI,
            onPressed: () => launchUrl(Uri.parse(
                AppStrings.twitterHashtag + AppStrings.skills.swiftUI)),
          ),
          SkillChip(
            title: AppStrings.skills.objc,
            onPressed: () => launchUrl(
                Uri.parse(AppStrings.twitterHashtag + AppStrings.skills.objc)),
          ),
        ],
      );

  Widget get companies => Wrap(
        spacing: 24,
        runSpacing: 12,
        children: [
          CompanyLogoItem(
            imagePath: AppAssets.dtccLogo,
            onTap: () => launchUrl(AppUrls.linkToTwoFour54),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.securrencyLogo,
            onTap: () => launchUrl(AppUrls.linkToSecurrency),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.twoFour54Logo,
            onTap: () => launchUrl(AppUrls.linkToTwoFour54),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.orbitStartupsLogo,
            onTap: () => launchUrl(AppUrls.linkToOrbitStartups),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.codematicsLogo,
            onTap: () => launchUrl(AppUrls.linkToCodematics),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.satsumaLogo,
            onTap: () => launchUrl(AppUrls.linkToSatsuma),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.uetPeshawarLogo,
            onTap: () => launchUrl(AppUrls.linkToTwoFour54),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.careLogo,
            onTap: () => launchUrl(AppUrls.linkToCare),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.innoventLogo,
            onTap: () => launchUrl(AppUrls.linkToInnovent),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.mobioInteractiveLogo,
            onTap: () => launchUrl(AppUrls.linkToMobio),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.tracreLogo,
            onTap: () => launchUrl(AppUrls.linkToTwoFour54),
          ),
          CompanyLogoItem(
            imagePath: AppAssets.wiotLogo,
            onTap: () => launchUrl(AppUrls.linkToWiot),
          )
        ],
      );
}
