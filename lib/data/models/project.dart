class Project {
  final String title;
  final String subTitle;
  final String description;
  final String imageUrl;
  final String? previewLink;
  final String? googlePlay;
  final String? githubRepoLink;
  final String? researchLink;

  const Project({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.imageUrl,
    this.previewLink,
    this.googlePlay,
    this.githubRepoLink,
    this.researchLink,
  });
}
