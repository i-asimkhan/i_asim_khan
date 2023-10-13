import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_asim_khan/core/utils/app_enums.dart';
import 'package:i_asim_khan/presentation/blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';

class HorizontalHeaders extends StatelessWidget {
  const HorizontalHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(
          children: List.generate(
            AppBarHeaders.values.length,
            (index) => CustomHeaderBtn(headerIndex: index),
          ),
        );
      },
    );
  }
}
