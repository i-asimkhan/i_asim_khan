import 'package:i_asim_khan/data/models/custom_service.dart';
import 'package:i_asim_khan/data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'Mobile App Development ',
      logo: AppAssets.androidLogo,
      description:
          'I can elevate your business with my expertise in iOS app development using Swift and Objective-C. Additionally, I specialize in crafting cross-platform applications with Flutter and Dart for a seamless user experience.',
    ),
    CustomService(
      service: 'Blockchain Integration and Development',
      logo: AppAssets.uiDesignLogo,
      description:
          'I can seamlessly integrate blockchain for enhanced security and transparency. My expertise includes smart contracts development, automating and securing transactions. Explore web3 development and groundbreaking initiatives with confidence',
    ),
    CustomService(
      service: 'Front-End Development',
      logo: AppAssets.scrappingLogo,
      description:
          'I can transform your digital presence with visually stunning and responsive web interfaces. Specializing in HTML, CSS, TypeScript, and SwiftUI, I ensure an exceptional user experience',
    ),
    CustomService(
      service: 'Financial Technology Solutions',
      logo: AppAssets.scrappingLogo,
      description:
          'I can innovate your financial services with my solutions, from digital tokens integration to Nextgen Wallet App development. Stay at the forefront of the digital banking revolution.',
    ),
    CustomService(
      service: 'Technology Consultation',
      logo: AppAssets.scrappingLogo,
      description:
          'I can help you stay competitive with my technology consultation. I guide businesses in adapting to emerging technologies, fostering a culture of continuous learning and adaptability.',
    ),
    CustomService(
      service: 'Project Management',
      logo: AppAssets.scrappingLogo,
      description:
          'I can ensure project success with my comprehensive management services. From requirements analysis to deployment, I oversee the full lifecycle, emphasizing effective team collaboration and leadership.',
    ),

    // rarely used
    CustomService(
      service: 'Backend Development Solutions',
      logo: AppAssets.scrappingLogo,
      description:
          'I can ensure project success with my comprehensive management services. From requirements analysis to deployment, I oversee the full lifecycle, emphasizing effective team collaboration and leadership.',
    ),
    CustomService(
      service: 'Emerging Technologies Integration',
      logo: AppAssets.scrappingLogo,
      description:
          'I can ensure project success with my comprehensive management services. From requirements analysis to deployment, I oversee the full lifecycle, emphasizing effective team collaboration and leadership.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      title: 'WisdomTree Prime',
      subTitle: 'Do More With One Financial App',
      description:
          'Introducing WisdomTree Prime™, the innovative personal finance app offering curated access to digital assets, including Digital Gold, Bitcoin, and diversified Digital Funds. Save, invest, and soon spend digital assets like never before while prioritizing investor and consumer advocacy at every step.',
      imageUrl:
          'https://scontent.fauh1-1.fna.fbcdn.net/v/t39.30808-6/358141166_285064767390522_5389784878050207574_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pM1z1uWNIVYAX94iohu&_nc_ht=scontent.fauh1-1.fna&cb_e2o_trans=t&oh=00_AfCn0pYddrW9eSCfAaUNlBml_A9aOOmh7NcUiH3nBoQOWw&oe=65F1EE7B',
      previewLink: 'https://www.wisdomtreeprime.com',
    ),
    Project(
      title: 'Kardaan - DoorStep Services',
      subTitle: 'Services At Your Door Steps',
      description:
          'Investigating challenges faced by illiterate and semi-illiterate individuals in using traditional email applications, we propose a tailored solution. Our application, designed with icons and vocal instructions, caters to users with varying skill levels, ensuring usability without the need for training or external assistance.',
      imageUrl:
          'https://scontent.fauh1-1.fna.fbcdn.net/v/t39.30808-6/300641850_5705999459516167_7603071226790512553_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=NL_Uh8K5NaoAX8LZEGm&_nc_ht=scontent.fauh1-1.fna&cb_e2o_trans=t&oh=00_AfApw-8bSKRjU7JhE4KXAYP_aa5JrDxaCUW7Vuh9FhqNTg&oe=65F1FCC8',
      previewLink: 'https://www.kardaanservices.com',
    ),
    Project(
      title: 'Q App',
      subTitle: 'Grow Your Social Connections',
      description:
          'Effortlessly plan and coordinate social and sports events with your loved ones. Embark on a journey of discovery by joining thrilling events near you, ranging from sports to social gatherings and beyond.',
      imageUrl:
          'https://scontent.fdxb1-1.fna.fbcdn.net/v/t39.30808-6/428599887_122126411726165448_490027874301675235_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=5aWujAtXDcEAX8Rbqiu&_nc_ht=scontent.fdxb1-1.fna&cb_e2o_trans=t&oh=00_AfASdx3W9em3-1kuFsCzyX-rB9Z5tTzh8gr9pUOAPPK6Tw&oe=65F1BC0C',
      previewLink:
          'https://play.google.com/store/apps/details?id=com.krews.android',
    ),
    Project(
      title: 'WIOT 360° Integrated Solution',
      subTitle:
          'WIOT\'s 360° Integrated Solution for Seamless and Secure Journeys',
      description:
          'The 360° Integrated Solution, revolutionizing transportation safety through advanced IoT technology. Tailored for commercial and school buses, WIOT offers a suite of enterprise apps and specific products to address the unique needs of the school community.',
      imageUrl:
          'https://scontent.fdxb1-1.fna.fbcdn.net/v/t39.30808-6/405245399_122105862014120372_4354020196716234152_n.png?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=z7BdVXbcR_cAX_B9Pxr&_nc_oc=AQlWJU-y_zf3nRVi2QD5GtMfFFzDlsTG4CFzqH8y08oCB239IQgp8ul9L5p4PtlU_P8&_nc_ht=scontent.fdxb1-1.fna&cb_e2o_trans=t&oh=00_AfA5Opxm7pZ1J7yYc_MdGmXCt7UZXpge2YNZrqL4PzhLvQ&oe=65F287A6',
      previewLink: 'https://wiot360.com/fleet-ai-safety',
    ),
    Project(
      title: 'Universal TV Remote Control',
      subTitle:
          'The #1 Universal TV Remote Control App for Smart & IR TVs in over 100 countries with 100 million downloads',
      description:
          'Unlocking the #1 Universal TV Remote Control App across 100+ countries. Seamlessly control your Smart and IR TVs with your phone, connecting effortlessly via Wi-Fi for Smart TVs or leveraging the built-in Infrared (IR) feature for IR TVs.',
      imageUrl:
          'https://play-lh.googleusercontent.com/J2xCuz5Ybt_HJT2bpTkhS1I3GjbYxbzQJRjHnH_xib65VHWRbhmgRt7uC7RdKK0b6LQ=w5120-h2880-rw',
      previewLink:
          'https://play.google.com/store/apps/details?id=codematics.universal.tv.remote.control',
    ),
    Project(
      title: 'Self-Identification and Email Application for Illiterates',
      subTitle:
          'Investigating the Use of Email Application in Illiterate and SemiIlliterate Population',
      description:
          'Investigating challenges faced by illiterate and semi-illiterate individuals in using traditional email applications, we propose a tailored solution. Our application, designed with icons and vocal instructions, caters to users with varying skill levels, ensuring usability without the need for training or external assistance.',
      imageUrl:
          'https://raw.githubusercontent.com/i-asimkhan/illiterates_identification-email_application/master/resources/Illitrates_banner.jpg',
      previewLink:
          'https://file.techscience.com/uploads/attached/file/20200224/20200224073253_30212.pdf',
      researchLink:
          'https://file.techscience.com/uploads/attached/file/20200224/20200224073253_30212.pdf',
      githubRepoLink:
          'https://github.com/i-asimkhan/illiterates_identification-email_application',
    ),
  ];
}
