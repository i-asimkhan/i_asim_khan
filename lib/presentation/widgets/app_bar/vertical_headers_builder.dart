import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_asim_khan/core/theme/app_colors.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/presentation/blocs/home_bloc/home_bloc.dart';
import 'vertical_headers.dart';

class VerticalHeadersBuilder extends StatelessWidget {
  const VerticalHeadersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AnimatedCrossFade(
          sizeCurve: Curves.bounceInOut,
          alignment: Alignment.topCenter,
          crossFadeState: _getCrossFadeState(context),
          firstChild: Container(
            color: context.colors.appBarColor,
            child: const VerticalHeaders(),
          ),
          secondChild: Container(),
          duration: const Duration(milliseconds: 200),
        );
      },
    );
  }

  CrossFadeState _getCrossFadeState(BuildContext context) {
    final currentHeaderAxis = context.read<HomeBloc>().appBarHeaderAxis;
    return currentHeaderAxis == AppBarHeadersAxis.horizontal
        ? CrossFadeState.showSecond
        : CrossFadeState.showFirst;
  }
}
