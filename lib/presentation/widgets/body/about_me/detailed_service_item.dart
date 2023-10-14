import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/data/models/custom_service.dart';

class DetailedServiceItem extends StatefulWidget {
  const DetailedServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<DetailedServiceItem> createState() => _DetailedServiceItemState();
}

class _DetailedServiceItemState extends State<DetailedServiceItem> {
  Color itemColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    itemColor = context.colors.onSurface;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: itemColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: MouseRegion(
        onEnter: (e) {
          setState(() => itemColor = context.colors.primary);
        },
        onExit: (e) {
          setState(() => itemColor = context.colors.onSurface);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.logo,
              height: context.width < DeviceType.mobile.getMinWidth() ? 40 : 56,
            ),
            const SizedBox(height: 16),
            FittedBox(
              child: Text(
                widget.service.service,
                style:
                    context.textTheme.titleMedium?.copyWith(color: itemColor),
                textAlign: TextAlign.center,
              ),
            ),
            if (context.width > DeviceType.mobile.getMinWidth()) ...[
              const SizedBox(height: 16),
              Flexible(
                child: AutoSizeText(
                  widget.service.description,
                  style: context.textTheme.bodyLarge,
                  minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
