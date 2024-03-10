import 'package:flutter/material.dart';

class CompanyLogoItem extends StatelessWidget {
  const CompanyLogoItem({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  final String imagePath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Image.asset(
        imagePath,
        height: 52,
        width: 52,
      ),
    );
  }
}
