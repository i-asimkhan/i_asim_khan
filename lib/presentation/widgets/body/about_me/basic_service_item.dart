import 'package:flutter/material.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/data/models/custom_service.dart';

class BasicServiceItem extends StatefulWidget {
  const BasicServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<BasicServiceItem> createState() => _BasicServiceItemState();
}

class _BasicServiceItemState extends State<BasicServiceItem> {
  Color itemColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: context.colors.primaryLight,
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
            Icon(
              widget.service.icon,
              // size: 24,
              color: itemColor,
            ),
            const SizedBox(height: 16),
            if (context.width > DeviceType.mobile.getMinWidth())
              FittedBox(
                child: Text(
                  widget.service.service,
                  style:
                      context.textTheme.bodyMedium?.copyWith(color: itemColor),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
