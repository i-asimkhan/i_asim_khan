import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/core/utils/app_extensions.dart';
import 'package:i_asim_khan/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:i_asim_khan/core/theme/app_text_theme.dart';

class CustomHeaderBtn extends StatelessWidget {
  const CustomHeaderBtn({super.key, required this.headerIndex});

  final int headerIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(headerIndex));
      },
      style: TextButton.styleFrom(
        textStyle:
            context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
        foregroundColor: _getHeaderColor(
          context: context,
          currentIndex: context.read<HomeBloc>().appBarHeaderIndex,
          headerIndex: headerIndex,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 26,
        ),
        child: Text(
          AppBarHeaders.values[headerIndex].getString(),
        ),
      ),
    );
  }

  Color _getHeaderColor(
      {required BuildContext context,
      required currentIndex,
      required int headerIndex}) {
    if (currentIndex == headerIndex) {
      return context.colors.primary;
    } else {
      return context.colors.onSurface;
    }
  }
}
