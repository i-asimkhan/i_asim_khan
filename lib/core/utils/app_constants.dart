import 'package:i_asim_khan/data/models/custom_service.dart';
import 'package:i_asim_khan/data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Wisdom Tree Prime',
      imageUrl:
          'https://play-lh.googleusercontent.com/ZM4Mp2-uBAyGodtH4GmihaaNBaDZfKQY26cTZwCvkhnY5KIntBbPiI7mSOM3-Z_as5c=w5120-h2880-rw',
      description: 'A better system is out there. Let\'s build it together.',
      githubRepoLink: 'https://www.wisdomtreeprime.com',
      previewLink: 'https://www.wisdomtreeprime.com/about/#qr-code',
    )
  ];
}
